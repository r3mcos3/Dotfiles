[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

export EDITOR=lvim


# # Install plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "wintermi/zsh-fnm"
# Theme
plug "wintermi/zsh-starship"

# Example install completion
plug "esc/conda-zsh-completion"


# Aliasses
alias vpnon="sudo wg-quick up wg0"
alias vpnoff="sudo wg-quick off wg0"
alias server="ssh remco@10.10.50.93 -p 2223"
alias ha="ssh root@10.10.50.173"
alias mntha="sshfs root@10.10.50.173:/config /home/remco/harddisk/ha/"


gcom() {
	git add .
	git commit -m "$1"
	}
lazyg() {
	git add .
	git commit -m "$1"
	git push
}

