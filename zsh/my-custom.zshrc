# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# all of our zsh files
typeset -U config_files
config_files=($DOTFILES/**/*.zsh)

# load the path files
for file in ${(M)config_files:#*/path.zsh}
do
  source $file
done

# load everything but the path and completion files
for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}
do
  source $file
done

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}
do
  source $file
done

unset config_files

# set available the history-incremental-search-backward on vi mode
bindkey "^R" history-incremental-search-backward

# set xterm-256color for the terminal
export TERM=xterm-256color

# load .nvm
# source ~/.nvm/nvm.sh

# workarround for lang encoding
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Xing olympus-tools
export PATH="$HOME/.oly/bin:$PATH"

# Java environment
export JAVA_HOME=`/usr/libexec/java_home`

# Go environment
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# This is added to fix `gem install mysql2` (ld: library not found for -lssl)
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# asdf (https://asdf-vm.com/#/)
. $(brew --prefix asdf)/asdf.sh
