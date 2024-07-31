
# The following lines were added by compinstall

zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '/home/vlpatton/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install


autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST

if [ -n "$SSH_CLIENT" ]; then
    PROMPT='%F{#11D}%n@%m%f %F{#1D1}%~%f %F{#D11}${vcs_info_msg_0_}%f%# '
else
    PROMPT='%F{#11D}%n%f %F{#1D1}%~%f %F{#D11}${vcs_info_msg_0_}%f%# '
fi

alias ls="ls --color"
export GPG_TTY=$(tty)
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

# GPG SSH support
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
