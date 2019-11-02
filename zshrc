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


alias nano='nano -w'

# Git Aliases
alias gits='git status'
alias gith='git log --oneline --abbrev-commit --all --graph --decorate'

# ls Aliases
alias ls='ls --color=auto'
alias ll='ls -lah'
alias l='ls -lh'

# Short Alias for reflector
alias reflector='sudo reflector --verbose -l 5 -p https --sort rate --save /etc/pacman.d/mirrorlist'

# set evals for thefuck
eval $(thefuck --alias)
eval $(thefuck --alias FUCK)

autoload -U colors && colors

# set Prompt
PS1="
%{$fg[white]%}%3~ %{$reset_color%}
%{$fg[yellow]%} 🏝  %{$reset_color%}"

# source syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# exec screenfetch
screenfetch
