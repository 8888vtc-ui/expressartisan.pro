param (
    [Parameter(Mandatory=$true)]
    [string]$ClientName,
    
    [Parameter(Mandatory=$true)]
    [string]$Job,
    
    [Parameter(Mandatory=$true)]
    [string]$City
)

$SafeName = $ClientName -replace '[^a-zA-Z0-9-]', ''
$TargetDir = Join-Path "d:\CREAWEB\clients" $SafeName
$TemplateDir = "d:\CREAWEB\template"

if (Test-Path $TargetDir) {
    Write-Error "Le dossier client '$SafeName' existe déjà."
    return
}

Write-Host "🏗️ Création du site pour $ClientName ($Job à $City)..." -ForegroundColor Cyan

# Créer le répertoire
New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null

# Copier le template
Copy-Item -Path "$TemplateDir\*" -Destination $TargetDir -Recurse

# Personnaliser le contenu
$IndexFile = Join-Path $TargetDir "index.html"
$Content = Get-Content $IndexFile -Raw

$Content = $Content -replace "NOM DE L'ARTISAN", $ClientName.ToUpper()
$Content = $Content -replace "\[MÉTIER\]", $Job
$Content = $Content -replace "\[Métier\]", $Job
$Content = $Content -replace "\[VILLE\]", $City
$Content = $Content -replace "\[Ville\]", $City
$Content = $Content -replace "\[Artisan Name\]", $ClientName

Set-Content -Path $IndexFile -Value $Content

Write-Host "✅ Site créé avec succès dans : $TargetDir" -ForegroundColor Green
Write-Host "🚀 Prêt à être déployé sur Netlify !" -ForegroundColor Yellow
