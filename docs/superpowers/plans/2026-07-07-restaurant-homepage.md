# Restaurant Homepage Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a static, responsive homepage for a lively Chinese home-style restaurant named "巷口饭馆".

**Architecture:** Use plain HTML and CSS so the page opens directly in a browser. Keep structure in `index.html`, presentation in `styles.css`, and automated smoke checks in `tests/homepage.test.ps1`.

**Tech Stack:** Semantic HTML, responsive CSS, PowerShell smoke test.

---

## File Structure

- Create: `index.html` for page content and semantic sections.
- Create: `styles.css` for layout, color, responsive behavior, and CSS food visuals.
- Create: `tests/homepage.test.ps1` for static checks that verify required content and links.

### Task 1: Static Homepage Smoke Test

**Files:**
- Create: `tests/homepage.test.ps1`

- [ ] **Step 1: Write the failing test**

```powershell
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$indexPath = Join-Path $root "index.html"
$stylePath = Join-Path $root "styles.css"

if (-not (Test-Path $indexPath)) { throw "index.html is missing" }
if (-not (Test-Path $stylePath)) { throw "styles.css is missing" }

$html = Get-Content -LiteralPath $indexPath -Raw -Encoding UTF8
$css = Get-Content -LiteralPath $stylePath -Raw -Encoding UTF8

@("巷口饭馆", "查看菜单", "电话预订", "招牌菜", "今日推荐", "到店信息") | ForEach-Object {
  if ($html -notlike "*$_*") { throw "Missing required homepage text: $_" }
}

@("hero", "signature-dishes", "visit-info", "menu-preview") | ForEach-Object {
  if ($html -notlike "*$_*") { throw "Missing required section or class: $_" }
}

@("@media", "grid-template-columns", "dish-plate", "hero-actions") | ForEach-Object {
  if ($css -notlike "*$_*") { throw "Missing required CSS feature: $_" }
}

Write-Output "Homepage smoke test passed"
```

- [ ] **Step 2: Run test to verify it fails**

Run: `powershell -ExecutionPolicy Bypass -File tests/homepage.test.ps1`

Expected: FAIL with `index.html is missing`.

### Task 2: Homepage Markup

**Files:**
- Create: `index.html`

- [ ] **Step 1: Create semantic HTML**

Create `index.html` with a hero, signature dishes, menu preview, visit information, and footer. Link `styles.css` from the document head.

- [ ] **Step 2: Include required actions**

Use visible buttons for `查看菜单` and `电话预订`, with the phone link set to `tel:021-88886666`.

### Task 3: Responsive Styling

**Files:**
- Create: `styles.css`

- [ ] **Step 1: Add desktop layout**

Use a warm off-white base, red primary accent, green secondary accent, split hero grid, dish cards, and CSS food imagery via `.dish-plate`.

- [ ] **Step 2: Add mobile layout**

Use `@media (max-width: 760px)` to stack sections, keep buttons readable, and prevent text overlap.

### Task 4: Verification

**Files:**
- Test: `tests/homepage.test.ps1`

- [ ] **Step 1: Run smoke test**

Run: `powershell -ExecutionPolicy Bypass -File tests/homepage.test.ps1`

Expected: PASS with `Homepage smoke test passed`.

- [ ] **Step 2: Inspect generated files**

Run: `git status --short`

Expected: new homepage files and docs are visible; Git commit may remain blocked if `.git` write permission is unavailable.
