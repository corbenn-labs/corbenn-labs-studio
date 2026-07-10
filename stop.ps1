#Requires -Version 5.1
$ErrorActionPreference = "Continue"

$RepoRoot = $PSScriptRoot
$ComposeFile = Join-Path $RepoRoot "infrastructure\docker\n8n\docker-compose.yml"

Write-Host "`nCORRENN LABS STOP`n"

$stopped = 0
Get-CimInstance Win32_Process |
    Where-Object { $_.CommandLine -match "uvicorn.*manager\.manager:app" } |
    ForEach-Object {
        Stop-Process -Id $_.ProcessId -Force -ErrorAction SilentlyContinue
        Write-Host "[OK] Manager detenido (PID $($_.ProcessId))" -ForegroundColor Green
        $stopped++
    }

if ($stopped -eq 0) {
    Write-Host "[OK] Manager no estaba corriendo" -ForegroundColor Green
}

docker compose -f $ComposeFile down 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "[OK] n8n detenido" -ForegroundColor Green
} else {
    Write-Host "[FAIL] No se pudo detener n8n" -ForegroundColor Red
}

Write-Host "`nShutdown completo.`n"
