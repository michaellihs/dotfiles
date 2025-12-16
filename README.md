My Dotfiles
===========

This repository contains the configuration of my workstation. It is inspired by [Christian's Dotfiles repository on GitHub](https://github.com/ctrabold/dotfiles) and I mainly kicked out things that I either don't use at the moment or didn't understand :)

**This setup currently only works on Mac!!!**


What does it bring?
-------------------

* zsh config
* [hstr](https://github.com/dvorka/hstr) history search
* ~[Powerlevel9k Prompt](https://github.com/Powerlevel9k/powerlevel9k)~ [Powerlevel10k prompt](https://github.com/romkatv/powerlevel10k)
* [rcm](https://thoughtbot.github.io/rcm/) dotfiles manager
* my default CLI apps and some other apps (e.g. VirtualBox, Vagrant, Docker...) check the [Brewfile](Brewfile)
* shell completion for `do` scripts


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


Prerequisites
-------------

Although I intended to automate as many things as possible, there are a few steps you have to run manually:

* Install [Homebrew](https://github.com/Homebrew/homebrew/wiki/Installation)
* From the root of this repository, run

   ```brew bundle```
   
  This will take a while, since all apps managed by homebrew will be installed

* install the following zsh plugins:

   ```bash
   ZSH_CUSTOM='~/dotfiles/zsh'
   git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
   ```

Usage
-----

* Set `zsh` as your login shell

   ```chsh -s $(which zsh)```

   > depending on your `zsh` installation path, you might wanna have to add the output of `which zsh` to `/etc/shells`

* Clone `dotfiles` repo to your `HOME` folder 

   ```
   git clone git@github.com:michaellihs/dotfiles.git $HOME/dotfiles
   ln -s $HOME/dotfiles/rcrc $HOME/.rcrc
   ```

* I use [rcm](https://thoughtbot.github.io/rcm/) to manage our dotfiles, therefore, first check whether the dotfiles it would link to your home directory are ok via

   ```lsrc```
   
* afterwards link the dotfiles via
  
   ```rcup -v -t darwin```

  > what this command does is basically creating a symlink from all the files and folders in this repo inside your home directory. That allows you to version control your dotfiles outside of the home dir.


`sudo` with touch id
--------------------

To allow for touch id authentication when `sudo`-ing in your terminal, add the following line to the top of `/etc/pam.d/sudo`:

```
auth       sufficient     pam_tid.so
```

Additional tools
----------------

- [git-mob](https://github.com/rkotze/git-mob/tree/master/packages/git-mob#install)


TODOs
-----

- [x] update powerlevel9k to https://github.com/romkatv/powerlevel10k


References & Sources
--------------------

* [Christian's Dotfiles](https://github.com/ctrabold/dotfiles)
* [Powerlevel9k Prompt](https://github.com/Powerlevel9k/powerlevel9k/wiki/Stylizing-Your-Prompt)
* [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle)
* [Some Mac Setup Resources](https://sourabhbajaj.com/mac-setup/iTerm/zsh.html)
* [Prezto - Instantly Awesome ZSH](https://github.com/sorin-ionescu/prezto)
* [ZAW](https://blog.patshead.com/2013/04/more-powerful-zsh-history-search-using-zaw.html)
* [hstr for better history search](https://github.com/dvorka/hstr)
* [zsh autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [jazz up your zsh terminal](https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/)
