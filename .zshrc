# ---------- Shell ----------
autoload -U colors && colors
setopt PROMPT_SUBST

# ---------- Homebrew ----------
# Apple Silicon Homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# ---------- Bun ----------
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ---------- pnpm ----------
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# ---------- Node / npm ----------
# Homebrew Node
export PATH="/opt/homebrew/opt/node/bin:$PATH"

# npm global binaries
export PATH="$(npm prefix -g 2>/dev/null)/bin:$PATH"

# ---------- Java ----------
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# ---------- NVM ----------
# IMPORTANT:
# Only enable this if ~/.nvm/nvm.sh is a valid NVM installation.
#
# Your previous nvm.sh currently appears to be corrupted,
# so this is intentionally disabled for now.
#
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"


# ╭──────────────────────────────────────────────╮
# │                   PROMPT                    │
# ╰──────────────────────────────────────────────╯
PROMPT='%F{cyan}%~%f%F{yellow}$(git branch --show-current 2>/dev/null | sed "s/^/ (/;s/$/)/")%f %F{green}❯%f '

alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias lla='eza -lha --icons --group-directories-first'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias cod='cd ~/Documents/code'
alias docs='cd ~/Documents'
alias down='cd ~/Downloads'
alias code='cd ~/Documents/code/'
alias reload='source ~/.zshrc'
alias update='brew update && brew upgrade -y'

alias cls='clear'
alias c='clear'

alias vim='nvim'
alias vi='nvim'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

autoload -Uz compinit
compinit

if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)
fi
