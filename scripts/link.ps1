# ===== CONFIG =====
# Path to your Neovim repo
$RepoPath = "$env:USERPROFILE\source\repos\neovim"

# Neovim config folder
$NVimConfig = "$env:LOCALAPPDATA\nvim"

# ===== REMOVE OLD CONFIG IF EXISTS =====
if (Test-Path $NVimConfig) { Remove-Item $NVimConfig -Recurse -Force }

# ===== LINK ENTIRE REPO =====
New-Item -ItemType SymbolicLink -Path $NVimConfig -Target $RepoPath

Write-Host "Neovim now uses the entire repo folder at $RepoPath"
