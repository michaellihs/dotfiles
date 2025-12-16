alias h='history'
alias history='fc -il 1'
alias hosts='vim /etc/hosts'
alias mkdir='mkdir -p'
alias ping='ping -a'
alias tree='tree -A -a'
# should be exec $SHELL -l but doesn't work in jetbrains...
alias reloadzsh='exec zsh'
alias ws='cd ~/workspace'
alias restart-sound='sudo pkill coreaudiod'
alias sshpubcopy='cat ~/.ssh/id_rsa.pub | pbcopy'
alias downloads='cd ~/Downloads'
alias dotfiles='code ~/dotfiles'
alias glance='glances --enable-process-extended --process-short-name --hide-kernel-threads -1'
alias update-talisman='curl --silent  https://raw.githubusercontent.com/thoughtworks/talisman/master/global_install_scripts/update_talisman.bash > /tmp/update_talisman.bash && /bin/bash /tmp/update_talisman.bash'
alias uuidgen="uuidgen | tr '[:upper:]' '[:lower:]'"
alias doo="if [ -f 'do.sh' ]; then ./do.sh; else ./do; fi"
alias blog='ws && cd ultra-cycling.de'
alias presentations='ws && cd github/presentations'
alias date='gdate'
alias ghopen='gh repo view --web'

# 1 password
alias oplogin='eval $(op signin Thoughtworks)'

# Git
alias gl='git l'
alias gap='git add -p'
gpr (){
  git pull -r origin $(git rev-parse --abbrev-ref HEAD)
}

mcdir () {
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

jwt2json () {
  jq -R 'split(".") | .[1] | @base64d | fromjson' <<< "$1"
}

function kubectlgetall {
  for i in $(kubectl api-resources --verbs=list --namespaced -o name | grep -v "events.events.k8s.io" | grep -v "events" | sort | uniq); do
    echo "Resource:" $i
    kubectl -n ${1} get --ignore-not-found ${i}
  done
}

function iterm2_print_user_vars() {
  iterm2_set_user_var badge $badge
}

# Include custom aliases
[[ -f ~/.aliases.local ]] && source ~/.aliases.local
