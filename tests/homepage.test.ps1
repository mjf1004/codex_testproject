$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$indexPath = Join-Path $root "index.html"
$stylePath = Join-Path $root "styles.css"
$assetPath = Join-Path $root "assets/restaurant-hero.png"

if (-not (Test-Path $indexPath)) { throw "index.html is missing" }
if (-not (Test-Path $stylePath)) { throw "styles.css is missing" }
if (-not (Test-Path $assetPath)) { throw "restaurant hero image is missing" }

$html = Get-Content -LiteralPath $indexPath -Raw -Encoding UTF8
$css = Get-Content -LiteralPath $stylePath -Raw -Encoding UTF8

function TextFromCodePoints([int[]] $codes) {
  return -join ($codes | ForEach-Object { [char]$_ })
}

$requiredText = @(
  (TextFromCodePoints @(0x5df7, 0x53e3, 0x996d, 0x9986)),
  (TextFromCodePoints @(0x67e5, 0x770b, 0x83dc, 0x5355)),
  (TextFromCodePoints @(0x7535, 0x8bdd, 0x9884, 0x8ba2)),
  (TextFromCodePoints @(0x62db, 0x724c, 0x83dc)),
  (TextFromCodePoints @(0x4eca, 0x65e5, 0x63a8, 0x8350)),
  (TextFromCodePoints @(0x5230, 0x5e97, 0x4fe1, 0x606f))
)

$requiredText | ForEach-Object {
  if ($html -notlike "*$_*") { throw "Missing required homepage text: $_" }
}

@("hero", "signature-dishes", "visit-info", "menu-preview") | ForEach-Object {
  if ($html -notlike "*$_*") { throw "Missing required section or class: $_" }
}

if ($html -notlike "*assets/restaurant-hero.png*") { throw "Hero image is not referenced" }

@("@media", "grid-template-columns", "dish-plate", "hero-actions") | ForEach-Object {
  if ($css -notlike "*$_*") { throw "Missing required CSS feature: $_" }
}

Write-Output "Homepage smoke test passed"
