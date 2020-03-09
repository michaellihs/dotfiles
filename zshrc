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
)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim -f'
export GIT_EDITOR='vim -f'
export VIM_APP_DIR='/usr/bin/vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Load additional files
[[ -f $HOME/.secrets ]] && source $HOME/.secrets
[[ -f $HOME/.travis/travis.sh ]] && source $HOME/.travis/travis.sh
[[ -f $HOME/.iterm2_shell_integration.zsh ]] && source $HOME/.iterm2_shell_integration.zsh
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mimi/.sdkman"
[[ -s "/Users/mimi/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mimi/.sdkman/bin/sdkman-init.sh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

function iterm2_print_user_vars() {
  iterm2_set_user_var badge $badge
}
