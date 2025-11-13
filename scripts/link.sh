#!/bin/bash

# ===== CONFIG =====
# Path to your Neovim repo
REPO="$HOME/nvim-dotfiles"

# Neovim config folder
NVIM_CONFIG="$HOME/.config/nvim"

# ===== REMOVE OLD CONFIG =====
[ -d "$NVIM_CONFIG" ] && rm -rf "$NVIM_CONFIG"

# ===== LINK ENTIRE REPO =====
ln -s "$REPO" "$NVIM_CONFIG"

echo "Neovim now uses the entire repo folder at $REPO"
