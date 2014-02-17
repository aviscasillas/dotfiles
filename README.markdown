# dotfiles
This is a fork from https://github.com/holman/dotfiles, but customized and changed
to use oh-my-zsh as the main zsh configuration.

## install

It has [oh-my-zsh] (https://github.com/robbyrussell/oh-my-zsh) dependency, so
you must clone it into your home directory:
```sh
$ git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

Clone this dotfiles repo,  and copy the zshr.template inside:
```sh
$ git clone https://github.com/aviscasillas/dotfiles.git ~/.dotfiles
$ cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/oh-my-zsh.zshrc
```

Run the bootstrap script:
```sh
$ cd ~/.dotfiles
$ script/bootstrap
```

## more info
There are some changes between this and Holman's dotfile, so you can refer to  
his [README] (https://github.com/holman/dotfiles) for more info.
