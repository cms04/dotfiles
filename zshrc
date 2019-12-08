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
  github
  gradle
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
%{$fg[white]%}%3~ %{$reset_color%}$(git_prompt_info)
%{$fg[yellow]%} 🏝  %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}on %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

# source syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias nano='nano -w'

# Git Aliases
alias gits='git status'
alias gith='git log --oneline --abbrev-commit --all --graph --decorate'

# ls Aliases
alias ls='ls --color=auto'
alias ll='lsd -lah'
alias l='lsd -lh'

# exec screenfetch
screenfetch
