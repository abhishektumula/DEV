

# ~/.zshrc – Super minimal, no git

# Colors
autoload -U colors && colors

# Prompt: ❯ folder ❯
# Example: ❯ projects ❯
PROMPT='%F{cyan}❯ %F{blue}%1~%f %F{magenta}❯%f '

# Aliases (with eza + icons)
alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias lla='eza -lha --icons --group-directories-first'
alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'
alias docs='cd ~/Documents/'
alias xxx='cd ~/Documents/DSA'
alias devs='cd ~/Documents/DEV'
alias clearcache='sync && echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias cls='clear'
alias vim='nvim .'

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS

# Completion
autoload -Uz compinit && compinit
setopt COMPLETE_IN_WORD
setopt AUTO_MENU
setopt LIST_AMBIGUOUS

# Autosuggestions
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Syntax Highlighting
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
