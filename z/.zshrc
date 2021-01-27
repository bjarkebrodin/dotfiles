#
# Executes commands at the start of an interactive session.
#
# Authors:
#  	Sorin Ionescu <sorin.ionescu@gmail.com>
# 	Bjarke Brodin <bjarke@brodin.dk>	 

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source "$DOTDIR/aliases"
source "$DOTDIR/functions"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
