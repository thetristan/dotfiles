# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 1
zstyle :compinstall filename '/Users/tblease/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Tristan Standard ZSHRC
autoload -Uz vcs_info
setopt prompt_subst
autoload -U promptinit
promptinit

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
RPROMPT='${vcs_info_msg_0_}'

export EDITOR='mvim'

PATH=$PATH:~/bin
export PATH

# edit this rc file 
alias rcedit='mvim -f ~/.zshrc && source ~/.zshrc'
alias hostsedit='mvim -f /etc/hosts && dscacheutil -flushcache'

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

# vagrant commands
alias v='vagrant'
alias vu='vagrant up'
alias vs='vagrant status'
alias vsh='vagrant ssh'
alias vr='vagrant reload'
alias vh='vagrant halt'

alias vv='cd ~/vagrants/groupon'
