autoload -U colors
colors
setopt PROMPT_SUBST

# PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/node/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Prompt
git_prompt() {
    local branch
    branch=$(git branch --show-current 2>/dev/null)

    [[ -z "$branch" ]] && return

    if [[ -n "$(git status --porcelain 2>/dev/null)" ]]; then
        print -n " %B%F{blue}git:(%f%F{red}${branch}%f%F{blue})%f%b %F{red}✗%f"
    else
        print -n " %B%F{blue}git:(%f%F{red}${branch}%f%F{blue})%f%b"
    fi
}

PROMPT='%F{green}➜%f %B%F{green}%1~%f%b$(git_prompt) %F{green}❯%f '

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias code='cd ~/Documents/code'
alias cod='cd ~/Documents/code'
alias docs='cd ~/Documents'
alias down='cd ~/Downloads'

# Files
alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias lla='eza -lha --icons --group-directories-first'

# Shell
alias reload='source ~/.zshrc'
alias cls='clear'
alias c='clear'

# Editor
alias vim='nvim'
alias vi='nvim'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# Homebrew
alias update='brew update && brew upgrade'

# bun completions
[ -s "/Users/abhi/.bun/_bun" ] && source "/Users/abhi/.bun/_bun"
