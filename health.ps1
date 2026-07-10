#Requires -Version 5.1
$ErrorActionPreference = "Continue"

$RepoRoot = $PSScriptRoot
$EnvFile = Join-Path $RepoRoot ".env"
$N8nUrl = "http://127.0.0.1:5678"
$ManagerUrl = "http://127.0.0.1:8000"
$ComposeFile = Join-Path $RepoRoot "infrastructure\docker\n8n\docker-compose.yml"

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

Set-Location $RepoRoot

Write-Host "`nCORRENN LABS HEALTH`n"

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

docker info 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Add-Result "Docker" "OK" "Activo"
} else {
    Add-Result "Docker" "FAIL" "No responde"
}

$n8nRunning = docker ps --filter "name=corbenn-n8n" --format "{{.Names}}" 2>$null
if ($n8nRunning -eq "corbenn-n8n") {
    try {
        $null = Invoke-WebRequest -Uri $N8nUrl -UseBasicParsing -TimeoutSec 5
        Add-Result "n8n" "OK" ":5678"
    } catch {
        Add-Result "n8n" "FAIL" "Contenedor activo pero HTTP no responde"
    }
} else {
    Add-Result "n8n" "FAIL" "Contenedor no activo"
}

try {
    $null = Invoke-WebRequest -Uri "$ManagerUrl/docs" -UseBasicParsing -TimeoutSec 5
    Add-Result "Manager" "OK" ":8000"
} catch {
    Add-Result "Manager" "FAIL" "No responde"
}

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

$fail = @($Results | Where-Object { $_.Status -eq "FAIL" }).Count
foreach ($r in $Results) {
    $color = if ($r.Status -eq "OK") { "Green" } else { "Red" }
    Write-Host ("[{0}] {1,-16} {2}" -f $r.Status, $r.Name, $r.Detail) -ForegroundColor $color
}

Write-Host ""
if ($fail -eq 0) {
    Write-Host "STATUS: READY" -ForegroundColor Green
    exit 0
}

Write-Host "STATUS: NOT READY ($fail fallos)" -ForegroundColor Red
exit 1
