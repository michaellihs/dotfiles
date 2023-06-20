export ZSH=$HOME/.oh-my-zsh

# Set $PATH
# @see http://en.wikipedia.org/wiki/PATH_%28variable%29
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

DEFAULT_USER=$USER
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_CUSTOM=$HOME/dotfiles/zsh
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  extract
  git
  osx
  pip
  python
  sublime
  zsh-syntax-highlighting
  zsh-autosuggestions
  docker
  kubectl
  osx
)

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
### see https://gist.github.com/magicdude4eva/2d4748f8ef3e6bf7b1591964c201c1ab
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/oh-my-zsh.sh

fpath=(~/.zsh-completion $fpath)
autoload -Uz compinit && compinit -i

autoload -U +X bashcompinit && bashcompinit

# User configuration
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim -f'
export GIT_EDITOR='vim -f'
export VIM_APP_DIR='/usr/bin/vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'

# Load additional files
[[ -f $HOME/.secrets ]] && source $HOME/.secrets
[[ -f $HOME/.travis/travis.sh ]] && source $HOME/.travis/travis.sh
[[ -f $HOME/.iterm2_shell_integration.zsh ]] && source $HOME/.iterm2_shell_integration.zsh
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

export GOSS_PATH=/usr/local/bin/goss

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mimi/.sdkman"
[[ -s "/Users/mimi/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mimi/.sdkman/bin/sdkman-init.sh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function iterm2_print_user_vars() {
  iterm2_set_user_var badge $badge
}
