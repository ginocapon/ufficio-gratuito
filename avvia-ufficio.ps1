# Avvia ONLYOFFICE Document Server in locale (porta 8080)
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
    Write-Host "Docker non trovato. Installa Docker Desktop:" -ForegroundColor Yellow
    Write-Host "https://www.docker.com/products/docker-desktop/"
    Write-Host ""
    Write-Host "Nel frattempo puoi usare ONLYOFFICE Desktop (gratis):" -ForegroundColor Cyan
    Write-Host "https://www.onlyoffice.com/it/download-desktop.aspx"
    exit 1
}

docker compose up -d
Write-Host ""
Write-Host "ONLYOFFICE avviato. Apri: http://localhost:8080" -ForegroundColor Green
Write-Host "Per aprire file .docx/.xlsx sul PC senza Docker, usa ONLYOFFICE Desktop (vedi README.md)."
