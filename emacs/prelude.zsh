cp -f ~/.dotfiles/emacs/prelude-modules.el ~/.emacs.d/

# Rewrite personal
rm ~/.emacs.d/personal/*.el
cp ~/.dotfiles/emacs/personal/*.el ~/.emacs.d/personal/

# Rewrite snippets
rm -rf ~/.emacs.d/snippets
cp ~/.dotfiles/emacs/snippets ~/.emacs.d/snippets


# Install auto-complete plugin if doesn't exist
if ! [ -f $HOME/.emacs.d/auto-complete.el ]
then
    git clone https://github.com/auto-complete/auto-complete.git $HOME/auto-complete
    emacs -batch -l $HOME/auto-complete/etc/install.el $HOME/.emacs.d/
    rm -rf $HOME/auto-complete
fi
