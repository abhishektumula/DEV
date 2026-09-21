# ╭──────────────────────────────────────────────╮
# │                    SHELL                     │
# ╰──────────────────────────────────────────────╯

autoload -U colors && colors
setopt PROMPT_SUBST


# ╭──────────────────────────────────────────────╮
# │                  HOMEBREW                    │
# ╰──────────────────────────────────────────────╯

# Apple Silicon Homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"


# ╭──────────────────────────────────────────────╮
# │                    BUN                       │
# ╰──────────────────────────────────────────────╯

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# ╭──────────────────────────────────────────────╮
# │                   PNPM                       │
# ╰──────────────────────────────────────────────╯

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"


# ╭──────────────────────────────────────────────╮
# │                 NODE / NPM                   │
# ╰──────────────────────────────────────────────╯

# Homebrew Node
export PATH="/opt/homebrew/opt/node/bin:$PATH"

# npm global binaries
export PATH="$(npm prefix -g 2>/dev/null)/bin:$PATH"


# ╭──────────────────────────────────────────────╮
# │                    JAVA                      │
# ╰──────────────────────────────────────────────╯

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"


# ╭──────────────────────────────────────────────╮
# │                    NVM                       │
# ╰──────────────────────────────────────────────╯

# Enable only if NVM is installed correctly.
#
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"


# ╭──────────────────────────────────────────────╮
# │                   PROMPT                     │
# ╰──────────────────────────────────────────────╯

# PROMPT='%F{cyan}%~%f%F{yellow}$(git branch --show-current 2>/dev/null | sed "s/^/ (/;s/$/)/")%f %F{green}❯%f '
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%f'
zstyle ':vcs_info:git:*' actionformats '%F{yellow}(%b|%a)%f'
precmd() { vcs_info }
PROMPT='%F{blue}❯%f %F{cyan}%1~%f ${vcs_info_msg_0_} %F{blue}❯%f '

# ╭──────────────────────────────────────────────╮
# │                   ALIASES                    │
# ╰──────────────────────────────────────────────╯

# ---------- Listing ----------

alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias lla='eza -lha --icons --group-directories-first'


# ---------- Navigation ----------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias cod='cd ~/Documents/code'
alias code='cd ~/Documents/code/'
alias docs='cd ~/Documents'
alias down='cd ~/Downloads'


# ---------- Shell ----------

alias reload='source ~/.zshrc'
alias cls='clear'
alias c='clear'


# ---------- Editor ----------

alias vim='nvim'
alias vi='nvim'


# ---------- Git ----------

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'


# ---------- Homebrew ----------

alias update='brew update && brew upgrade'


# ╭──────────────────────────────────────────────╮
# │                 COMPLETIONS                  │
# ╰──────────────────────────────────────────────╯

autoload -Uz compinit
compinit


# ╭──────────────────────────────────────────────╮
# │                     FZF                      │
# ╰──────────────────────────────────────────────╯

if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)
fi


# ╭──────────────────────────────────────────────╮
# │              ZSH AUTOSUGGESTIONS             │
# ╰──────────────────────────────────────────────╯

if [[ -f "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
    source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi


# ╭──────────────────────────────────────────────╮
# │            ZSH SYNTAX HIGHLIGHTING           │
# ╰──────────────────────────────────────────────╯

# MUST be loaded last.
#if [[ -f "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
#    source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
#fi

# Unity CLI
. "/Users/abhi/.unity/env"
