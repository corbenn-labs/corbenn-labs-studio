#Requires -Version 5.1
$ErrorActionPreference = "Continue"

$RepoRoot = $PSScriptRoot
$ComposeFile = Join-Path $RepoRoot "infrastructure\docker\n8n\docker-compose.yml"
$EnvFile = Join-Path $RepoRoot ".env"
$N8nUrl = "http://127.0.0.1:5678"
$ManagerUrl = "http://127.0.0.1:8000"

$Results = @()

function Add-Result([string]$Name, [string]$Status, [string]$Detail) {
    $script:Results += [PSCustomObject]@{ Name = $Name; Status = $Status; Detail = $Detail }
}

function Import-DotEnv([string]$Path) {
    if (-not (Test-Path $Path)) { return $false }
    Get-Content $Path | ForEach-Object {
        $line = $_.Trim()
        if (-not $line -or $line.StartsWith("#")) { return }
        $i = $line.IndexOf("=")
        if ($i -lt 1) { return }
        Set-Item -Path ("Env:" + $line.Substring(0, $i).Trim()) -Value $line.Substring($i + 1).Trim()
    }
    return $true
}

function Test-PortListen([int]$Port) {
    return [bool](Get-NetTCPConnection -LocalPort $Port -State Listen -ErrorAction SilentlyContinue | Select-Object -First 1)
}

function Wait-Url([string]$Url, [int]$TimeoutSec) {
    $end = (Get-Date).AddSeconds($TimeoutSec)
    while ((Get-Date) -lt $end) {
        try {
            $r = Invoke-WebRequest -Uri $Url -UseBasicParsing -TimeoutSec 3
            if ($r.StatusCode -ge 200 -and $r.StatusCode -lt 500) { return $true }
        } catch { }
        Start-Sleep -Milliseconds 500
    }
    return $false
}

Set-Location $RepoRoot
$sw = [System.Diagnostics.Stopwatch]::StartNew()

Write-Host "`nCORRENN LABS START`n"

# .env
if (Import-DotEnv $EnvFile) {
    Add-Result ".env" "OK" "Cargado"
} else {
    Add-Result ".env" "FAIL" "No encontrado"
}

if ([string]::IsNullOrWhiteSpace($env:OPENAI_API_KEY)) {
    Add-Result "OPENAI_API_KEY" "FAIL" "Falta o vacia"
} else {
    Add-Result "OPENAI_API_KEY" "OK" "Presente"
}

if ([string]::IsNullOrWhiteSpace($env:MANAGER_MODEL)) {
    $env:MANAGER_MODEL = "gpt-5.5"
}

# Docker
docker info 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Add-Result "Docker" "OK" "Activo"
} else {
    Add-Result "Docker" "FAIL" "No responde"
}

# n8n
if (($Results | Where-Object { $_.Name -eq "Docker" }).Status -eq "OK") {
    docker compose -f $ComposeFile up -d *>$null
    if ($LASTEXITCODE -eq 0) {
        if (Wait-Url $N8nUrl 15) {
            Add-Result "n8n" "OK" ":5678"
        } else {
            Add-Result "n8n" "FAIL" "No respondio en 15s"
        }
    } else {
        Add-Result "n8n" "FAIL" "compose up fallo"
    }
} else {
    Add-Result "n8n" "FAIL" "Docker no disponible"
}

# OpenAI
if (-not [string]::IsNullOrWhiteSpace($env:OPENAI_API_KEY)) {
    try {
        $h = @{ Authorization = "Bearer $($env:OPENAI_API_KEY)" }
        $null = Invoke-RestMethod -Uri "https://api.openai.com/v1/models" -Headers $h -TimeoutSec 10
        Add-Result "OpenAI" "OK" "API valida"
    } catch {
        Add-Result "OpenAI" "FAIL" "API key invalida o sin red"
    }
} else {
    Add-Result "OpenAI" "FAIL" "Sin API key"
}

# Manager
if (Test-PortListen 8000) {
    if (Wait-Url "$ManagerUrl/docs" 3) {
        Add-Result "Manager" "OK" ":8000 ya activo"
    } else {
        Add-Result "Manager" "FAIL" "Puerto ocupado pero no responde"
    }
} else {
    $py = Get-Command python -ErrorAction SilentlyContinue
    if (-not $py) {
        Add-Result "Manager" "FAIL" "Python no encontrado"
    } else {
        Start-Process -FilePath $py.Source `
            -ArgumentList "-m uvicorn manager.manager:app --host 127.0.0.1 --port 8000" `
            -WorkingDirectory $RepoRoot -WindowStyle Hidden | Out-Null
        if (Wait-Url "$ManagerUrl/docs" 12) {
            Add-Result "Manager" "OK" ":8000 iniciado"
        } else {
            Add-Result "Manager" "FAIL" "No respondio en 12s"
        }
    }
}

# Report
$fail = @($Results | Where-Object { $_.Status -eq "FAIL" }).Count
foreach ($r in $Results) {
    $color = if ($r.Status -eq "OK") { "Green" } else { "Red" }
    Write-Host ("[{0}] {1,-16} {2}" -f $r.Status, $r.Name, $r.Detail) -ForegroundColor $color
}

$sw.Stop()
Write-Host ""
if ($fail -eq 0) {
    Write-Host ("STATUS: READY  ({0:N1}s)" -f $sw.Elapsed.TotalSeconds) -ForegroundColor Green
    Write-Host "n8n:     $N8nUrl"
    Write-Host "Manager: $ManagerUrl"
    exit 0
}

Write-Host ("STATUS: NOT READY  ({0:N1}s, {1} fallos)" -f $sw.Elapsed.TotalSeconds, $fail) -ForegroundColor Red
exit 1
