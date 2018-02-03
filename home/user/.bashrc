# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
eval `keychain --eval --agents ssh id_rsa`
export PATH="$PATH:$HOME/bin:/sbin:/usr/sbin:$HOME/go/bin:$HOME/.stack/snapshots/x86_64-linux/lts-9.6/8.0.2/bin:$HOME/.local/bin"

# Start in tmux session.
[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit; }

# Alias to neovim
alias vim=nvim
alias sudo='sudo '
