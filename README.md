My Dotfiles
===========

This repository contains the configuration of my workstation. It is inspired by the [Christian's Dotfiles repository on GitHub](https://github.com/ctrabold/dotfiles) and I mainly kicked out things that I either don't use at the moment or didn't understand :)


Prerequisites
-------------

Although I intended to automate as many things as possible, there are a few steps you have to run manually:

* Install [Homebrew](https://github.com/Homebrew/homebrew/wiki/Installation)
* From the root of this repository, run

   ```brew bundle```
   
  This will take a while, since all apps managed by homebrew will be installed


Usage
-----

* Set `zsh` as your login shell

   ```chsh -s $(which zsh)```

* Clone `dotfiles` repo to your `HOME` folder 

   ```
   git clone git@github.com:michaellihs/dotfiles.git $HOME/dotfiles
   ln -s $HOME/dotfiles/rcrc $HOME/.rcrc
   ```

* We use [rcm](https://thoughtbot.github.io/rcm/) to manage our dotfiles, therefore, first check whether the changes to be made are ok via

   ```lsrc```
   
  afterwards install the dotfiles via
  
   ```rcup -v -t darwin```


Directory Structure
-------------------

    .
    ├── .zshrc -> /Users/mimi/dotfiles/zshrc
    ├── .rcrc -> /Users/mimi/dotfiles/rcrc
    ├── .zshrc.local                          # local modifications, not to be submitted to dotfiles
    ├── dotfiles
    │   ├── iterm
    │   │   └── ... 
    │   ├── zsh
    │   │   └── ... 
    │   ├── ...
    │   ├── rcrc
    │   └── zshrc
    └── ...


TODOs
-----

- [ ] learn tmux and then add tmux configuration
- [ ] check, which vim config I want to add
- [ ] check, which git config I want to add


References & Sources
--------------------

* [Christian's Dotfiles](https://github.com/ctrabold/dotfiles)
* [Powerlevel9k Prompt](https://github.com/Powerlevel9k/powerlevel9k/wiki/Stylizing-Your-Prompt)
* [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle)
* [Some Mac Setup Resources](https://sourabhbajaj.com/mac-setup/iTerm/zsh.html)
* [Prezto - Instantly Awesome ZSH](https://github.com/sorin-ionescu/prezto)
