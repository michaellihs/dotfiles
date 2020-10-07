alias h='history'
alias history='fc -il 1'
alias hosts='vim /etc/hosts'
alias mkdir='mkdir -p'
alias ping='ping -a'
alias tree='tree -A -a'
# should be exec $SHELL -l but doesn't work in jetbrains...
#alias reloadzsh='source ~/.zshrc'
alias reloadzsh='exec zsh'
alias ws='cd ~/workspace'
alias mdxlocal=~/workspace/swf/mdxcli/target/darwin_amd64/mdx
alias restart-sound='sudo pkill coreaudiod'
alias sshpubcopy='cat ~/.ssh/id_rsa.pub | pbcopy'
alias jetson='picocom -b 115200 $(ls /dev/tty.usbserial*)'
alias downloads='cd ~/Downloads'
alias dotfiles='code ~/dotfiles'

# Git
alias gl='git l'
alias gpr='git pull -r origin master'

mcdir () {
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}



# Include custom aliases
[[ -f ~/.aliases.local ]] && source ~/.aliases.local
