[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

export EDITOR=nvim


# Install plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/exa"

# Theme
plug "wintermi/zsh-starship"

# Completion
plug "esc/conda-zsh-completion"


# Aliasses
alias vpnon="sudo wg-quick up wg0"
alias vpnoff="sudo wg-quick off wg0"
alias server="ssh remco@10.10.50.93"
alias ha="ssh root@10.10.50.193"
alias mntha="sshfs root@10.10.50.193:/config /home/remco/harddisk/ha/"
alias install="sudo apt install $1"
alias search="sudo apt search $1"
alias remove="sudo apt purge $1"
alias upd="sudo apt update"
alias upg="sudo apt upgrade"
alias list="nala list --upgradable"
alias mirrors="sudo nala fetch"
alias cat="batcat"

gcom() {
	git add .
	git commit -m "$1"
	}
lazyg() {
	git add .
	git commit -m "$1"
	git push
}

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

neofetch

export PATH="/home/remco/.local/bin:$PATH"
export PATH="/home/remco/.cargo/bin:$PATH"

 # fnm
  export PATH="/home/remco/.local/share/fnm:$PATH"
  eval "`fnm env`"

export PAGER="most"

