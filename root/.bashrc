export EDITOR='vim'

# git prompt
function git-branch-name {
  git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}
function git-branch-prompt {
  local branch=`git-branch-name`
  if [ $branch ]; then printf " [%s]" $branch; fi
}
PS1="\u@\h:\[\033[0;36m\]\w\[\033[0m\]\[\033[0;32m\]\$(git-branch-prompt)\[\033[0m\]\$ "

# aliases
alias malm="sshfs root@alm-central.symlinux.com:/ ~/mnt/alm-central"
alias menc="encfs ~/Dropbox/encrypted/dokument.bc/ ~/Dropbox_enc"
