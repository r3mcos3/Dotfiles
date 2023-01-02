[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

export EDITOR=nvim


# # Example install plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/sudo"

# Example theme
plug "zap-zsh/zap-prompt"

# Example install completion
plug "esc/conda-zsh-completion"


# Aliasses
alias upd="sudo apt update"
alias upg="sudo apt upgrade"
alias search="sudo apt search $1"
alias purge="sudo apt purge $1"
alias install="sudo apt install $1"
alias lvim="/tmp/lazy-lvim/bin/lvim"
# alias nvim="lvim"
alias fetch="nala fetch"
alias vpnon="sudo wg-quick up wg0"
alias vpnoff="sudo wg-quick off wg0"
alias server="ssh remco@10.10.50.93 -p 2223"
alias ha="ssh root@10.10.50.173"
alias mntha="sshfs root@10.10.50.173:/config /home/remco/harddisk/ha/"

# Functions
apt() { 
  command nala "$@"
}
sudo() {
  if [ "$1" = "apt" ]; then
    shift
    command sudo nala "$@"
  else
    command sudo "$@"
  fi
}

gcom() {
	git add .
	git commit -m "$1"
	}
lazyg() {
	git add .
	git commit -m "$1"
	git push
}

neofetch

export GPG_TTY=$(tty)

# fnm
export PATH="/home/remco/.local/share/fnm:$PATH"
eval "`fnm env`"
