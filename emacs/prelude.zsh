cp -f ~/.dotfiles/emacs/prelude-modules.el ~/.emacs.d/

# Rewrite personal
rm ~/.emacs.d/personal/*.el
cp ~/.dotfiles/emacs/personal/*.el ~/.emacs.d/personal/

# Rewrite snippets
rm -rf ~/.emacs.d/snippets
cp -rf ~/.dotfiles/emacs/personal/snippets ~/.emacs.d/personal/snippets
