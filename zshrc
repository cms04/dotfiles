#          _
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|

# set histfile
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/christian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add own bin and script folder to PATH
export PATH=$PATH:'/home/christian/bin:/home/christian/scripts'

# Short Alias for reflector
alias reflector='sudo reflector --verbose -l 5 -p https --sort rate --save /etc/pacman.d/mirrorlist'

# set evals for thefuck
eval $(thefuck --alias)
eval $(thefuck --alias FUCK)

autoload -U colors && colors
# Path to my oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# ohmyzsh-plugins
plugins=(
  archlinux
  command-not-found
  dirhistory
  docker
  docker-compose
  docker-machine
  git
  git-prompt
  github
  history-substring-search
  sudo
  systemd
  web-search
)

# source ohmyzsh
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# set Prompt
PROMPT='
%{$fg[white]%}%3~ %{$reset_color%}$(git_super_status)
%(?:%{$fg_bold[yellow]%} 🏝  :%{$fg_bold[red]%} 🏝  )%{$reset_color%}'
RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}on %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_SEPARATOR=" |"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{ ●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{ ✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg_bold[blue]%}%{ ✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{ ↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{ ↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{ ?%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{ ✔%G%}"

# source syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# nano alias
alias nano='nano -w'

# Git Aliases
alias gits='git status'
alias gith='git log --oneline --abbrev-commit --all --graph --decorate'

# ls Aliases
alias ls='lsd'
alias ll='lsd -lah'
alias l='lsd -lh'

# exec neofetch
neofetch
