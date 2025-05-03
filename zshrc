export PATH="/opt/homebrew/bin:$PATH"

# Enable colors for ls and other commands
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Enable vcs_info for version control status
autoload -Uz vcs_info

# Enable colors in zsh
autoload -U colors && colors
precmd() { vcs_info }
zstyle ':vcs_info:*' formats '(%b)'

# Enable variable substitution in the prompt
setopt PROMPT_SUBST

# Set up a custom prompt
PROMPT='%F{green}%n%f@%F{blue}%m%f %F{yellow}%1~%f %F{magenta}${vcs_info_msg_0_}%f %# '

nvm use 20.0.0

# Aliases for colorized ls
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'

# Enable zsh completion system
autoload -Uz compinit && compinit

# Configure completion menu selection mode
zstyle ':completion:*' menu select
zmodload zsh/complist

