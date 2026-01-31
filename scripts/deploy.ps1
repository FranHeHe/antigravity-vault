# ============================================================
# Antigravity Vault — Global Deploy Script
# ------------------------------------------------------------
# Este script es el ÚNICO método soportado para desplegar
# el Vault de Antigravity en el entorno global (~/.gemini).
#
# QUÉ HACE:
# - Sincroniza SOLO skills curadas (vendor_curated)
# - Sincroniza workflows globales
# - Instala reglas globales (GEMINI.md)
#
# QUÉ NO HACE:
# - NO copia vendors crudos
# - NO toca proyectos locales
# - NO mezcla fuentes
#
# Modo: overwrite controlado (mirror)
# ============================================================

$VAULT_ROOT  = Resolve-Path "$PSScriptRoot\.."
$GEMINI_ROOT = "$HOME\.gemini"
$AG_ROOT     = "$GEMINI_ROOT\antigravity"

Write-Host "Deploying Antigravity Vault (GLOBAL)..." -ForegroundColor Cyan

# ------------------------------------------------------------
# 1. Skills (CURATED ONLY)
# Source of Truth: skills/vendor_curated
# Destination: ~/.gemini/antigravity/skills
# ------------------------------------------------------------
Write-Host "→ Sync curated skills" -ForegroundColor Yellow
robocopy `
  "$VAULT_ROOT\skills\vendor_curated" `
  "$AG_ROOT\skills" `
  /MIR /NFL /NDL /NJH /NJS

# ------------------------------------------------------------
# 2. Global Workflows
# ------------------------------------------------------------
Write-Host "→ Sync global workflows" -ForegroundColor Yellow
robocopy `
  "$VAULT_ROOT\workflows" `
  "$AG_ROOT\global_workflows" `
  /MIR /NFL /NDL /NJH /NJS

# ------------------------------------------------------------
# 3. Global Rules (Gemini)
# ------------------------------------------------------------
Write-Host "→ Sync GEMINI.md (global rules)" -ForegroundColor Yellow
Copy-Item `
  "$VAULT_ROOT\rules\GEMINI.md" `
  "$GEMINI_ROOT\GEMINI.md" `
  -Force

Write-Host "Deploy completed successfully." -ForegroundColor Green

