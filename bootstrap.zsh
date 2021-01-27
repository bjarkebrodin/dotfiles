#!/usr/bin/env zsh

# Author:
#	Bjarke Brodin <bjarke@brodin.dk>

# TODO: put some of these things in a YAML
# Places to put things
if [[ ! -v DOTDIR ]] then
	export DOTDIR="$(dirname $(realpath $0))"
	echo "export DOTDIR=$DOTDIR" >> /etc/zshenv
fi

LOG="$DOTDIR/bootstrap.log"

# Setup logging facilities
function log { echo $1 >> "$LOG" }
if [[ -f "$LOG" ]] then; rm "$LOG"; fi 
touch "$LOG"

# Make sure we can add misc junk to ignore
if [[ ! -f "$DOTDIR/.gitignore" ]] then; touch "$DOTDIR/.gitignore"; fi

# Get started
log "\n$(date)"
log "Running bootstrap.zsh"
log "Bootstrapping dotfiles to dot-repo"
log "	DOTDIR: $DOTDIR"

# Setup prezto
if [[ ! -v "ZDOTDIR" ]] then
	export ZDOTDIR="$DOTDIR/z"
	echo "export ZDOTDIR=$ZDOTDIR" >> /etc/zshenv
fi

log "	ZDOTDIR: $ZDOTDIR\n"

if [[ -d "$ZDOTDIR/.zprezto" ]] then
	log "	prezto seems to be set up already, leaving in place"
else
	setopt EXTENDED_GLOB
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto" > /dev/null
fi

# Symlink misc dotfiles
function symlink_file_to_HOME {
	ln -sfF "$DOTDIR/$1" "$HOME/.$1"
}

# Especially these could be YAMLed
symlink_file_to_HOME gitconfig
symlink_file_to_HOME vimrc
ln -s "$DOTDIR/vim" "$HOME/.vim"


