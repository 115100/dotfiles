# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
promptinit; prompt gentoo
setopt noautomenu

# C-R for reverse search
bindkey '^R' history-incremental-search-backward

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

# Speed up git completion
__git_files () {
    _wanted files expl 'local files' _files
}

# Env vars
export PATH="$PATH:$HOME/bin:/sbin:/usr/sbin"
eval `keychain --eval --agents ssh id_rsa`
