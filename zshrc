# The following lines were added by compinstall

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' use-cache on
zstyle :compinstall filename '/Users/tblease/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Tristan Standard ZSHRC
autoload -Uz vcs_info
setopt prompt_subst
autoload -U promptinit
promptinit


VIMODE=" ⨀"
# If I am using vi keys, I want to know what mode I'm currently using.
# zle-keymap-select is executed every time KEYMAP changes.
# From http://zshwiki.org/home/examples/zlewidgets
function zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/ ⨁}/(main|viins)/ ⨀}"
    zle reset-prompt
}

zle -N zle-keymap-select
bindkey -v


# CUSTOM PROMPT
bell=`tput bel`
precmd () {
  vcs_info

  zstyle ':vcs_info:git:*' check-for-changes  true
  zstyle ':vcs_info:*'     actionformats      "[%s|%b|%a]"
  zstyle ':vcs_info:*'     actionformats      "%c %u [%s|%b|%a]"
  zstyle ':vcs_info:*'     formats            "[%s|%b]"
  zstyle ':vcs_info:git:*' formats            "%c %u [%s|%b]"

  echo -n "\033]1;$USERNAME@$HOST$bell\033]2;$PWD> - $USERNAME@$HOST ($status)$bell"
}
PROMPT='%m %B%3c%(#.#.>)%b '
PROMPT2="%_> "
RPROMPT='${vcs_info_msg_0_}$VIMODE'

# vim related fun
export EDITOR='mvim -f'
alias vi='mvim'
alias vim='mvim'


# path management
PATH=$PATH:~/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH

# edit this rc file
alias rcedit='mvim -f ~/.zshrc && source ~/.zshrc'

# edit hosts file
alias hostsedit='sudo mvim -f /etc/hosts && dscacheutil -flushcache'

# remove ds store files
alias rmdsstore='find . -name .DS_Store -type f -exec rm {} \;'

# standard git commands
alias g='git'
alias ga='git add'
alias gi='git init'
alias gc='git commit -m'
alias gac='git commit -am "auto commit"'
alias gs='git status'
alias gl='git log --pretty=oneline'
alias gr='git rebase -i'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gpr='git pull --rebase'

# vagrant commands
alias v='vagrant'
alias vu='vagrant up'
alias vs='vagrant status'
alias vsh='vagrant ssh'
alias vr='vagrant reload'
alias vh='vagrant halt'
alias vv='cd ~/vagrants/groupon'


# colored output ls
alias ls='ls -G'


# aliases for pushd/popd
alias p='pushd'
alias o='popd'
alias s='cd -'
