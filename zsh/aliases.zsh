alias h='history'
alias history='fc -il 1'
alias hosts='vim /etc/hosts'
alias mkdir='mkdir -p'
alias ping='ping -a'

# Git
alias gl='git l'

# Include custom aliases
[[ -f ~/.aliases.local ]] && source ~/.aliases.local