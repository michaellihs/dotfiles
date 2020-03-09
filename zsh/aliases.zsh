alias h='history'
alias history='fc -il 1'
alias hosts='vim /etc/hosts'
alias mkdir='mkdir -p'
alias ping='ping -a'
alias tree='tree -A -a'
alias reloadzsh='source ~/.zshrc'
alias ws='cd ~/workspace'
alias mdxlocal=~/workspace/swf/mdxcli/target/darwin_amd64/mdx
alias restart-sound='sudo pkill coreaudiod'

# Git
alias gl='git l'
alias gpr='git pull -r origin master'

mcdir () {
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# Include custom aliases
[[ -f ~/.aliases.local ]] && source ~/.aliases.local
