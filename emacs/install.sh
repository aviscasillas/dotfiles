EMACS_D=$HOME/.emacs.d

if [ -d "$EMACS_D" ];
then
    git -C $EMACS_D checkout master
    git -C $EMACS_D pull origin master
else
    git clone https://github.com/aviscasillas/prelude.git ~/.emacs.d
fi
