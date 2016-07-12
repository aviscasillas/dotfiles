# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  # Use sublime for my editor.
  export EDITOR='emacs'
fi

# Add ssh key entry
ssh-add ~/.ssh/id_rsa
