#!/usr/bin/env zsh

echo "pulling fresh changes from Nvim, ghossty, tmux......"

mkdir -p "./nvim"
mkdir -p "./ghostty"
mkdir -p "./tmux"
touch "./zshrc"

cp -r "${HOME}/.config/tmux/tmux.conf" "./tmux"
cp -r "${HOME}/.config/ghostty/" "./ghostty/"
cp -r "${HOME}/.config/nvim" "./nvim"

cp "${HOME}/.zshrc" "./zshrc"

echo "finished"


git status
git add . 
git commit -m "configuration upto date"
response=git push origin main
echo "${response}"
