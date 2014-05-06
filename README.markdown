# dotfiles
This is a fork from https://github.com/holman/dotfiles, but customized and changed
to use oh-my-zsh as the main zsh configuration.

## install

Install ZSH, set it as default and relogin to OSX:
```
$ brew install zsh
$ chsh -s /usr/local/bin/zsh $USER
$ sed "/usr/local/bin/zsh" /etc/shells
$ sudo mv /etc/{zshenv,zshrc}
```

It has [oh-my-zsh] (https://github.com/robbyrussell/oh-my-zsh) dependency: 
```sh
$ curl -L http://install.ohmyz.sh | sh
```

It has [prelude] (https://github.com/bbatsov/prelude) dependency:
```sh
$ curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh
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
