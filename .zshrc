export PATH=$PATH:~/.local/bin
export OSU_SONG_FOLDER="/HDD/osu/osu/Songs"
export EDITOR="nvim"
alias vim="nvim"
alias cls="clear"
alias osukill="~/.local/bin/osukill"
alias osu="~/.local/bin/osu"
alias lg="lazygit"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias lazyconfig='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias sshfsrpi='sshfs pi@192.168.2.212:/home/pi/ RaspberryPi'
alias sshfslap='sshfs rodi@192.168.2.48:/home/rodi Laptop'
alias pulseshitter='PULSE_LATENCY_MSEC=15 pulseshitter'

# plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/Builds/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# yes, i stole the prompt from luke smith
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="$HOME/.local/bin/:$PATH"

# Arrow keys fix
bindkey "\eOc" forward-word
bindkey "\eOd" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
export PATH=$PATH:/home/rodi/.spicetify
