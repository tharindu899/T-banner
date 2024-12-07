ZSH_THEME="xiong-chiamiov-plus"

export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

#plugins=(
#		git
#	   	zsh-vi-mode
#)

plugins=(
 	copypath
 	dircycle
 	extract
 	frontend-search
 	git
 	git-auto-fetch
 	git-flow-completion
 	gitfast
 	git-prompt
 	ionic
#	last-working-dir
#	magic-enter
#	per-directory-history
 	pre-commit
 	safe-paste
 	web-search
#	zsh-autosuggestions
 	zsh-completions
 	zsh-history-substring-search
#	zsh-interactive-cd
#	zsh-syntax-highlighting
#	zsh-vi-mode
)


source $ZSH/oh-my-zsh.sh

#banner
#bash $PREFIX/etc/banner.txt

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/../usr/etc/.plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/../usr/etc/.plugin/zsh-autosuggestions/zsh-autosuggestions.zsh
#alias pkg='nala'
alias apt='nala'
alias g='git clone'
alias t='termux-open'
alias ai='apt install'
alias py='python'
alias py2='python2'
alias py3='python3'
alias g='git clone'
alias t='termux-open'
alias m='micro'
alias ls='logo-ls'
alias lsa='logo-ls -A'
alias lsal='logo-ls -R -A'
alias lsall='logo-ls -r -A'
alias r='termux-reload-settings'
alias storage='termux-setup-storage'
alias repo='termux-change-repo'
alias pi='nala install'
alias pup='nala update'
alias pug='nala upgrate -y'
alias aup='nala update'
alias apg='nala upgarde -y'
alias c='cd ..'
alias etc='cd /data/data/com.termux/files/usr/etc'
alias n='nano'
alias g='git clone'
alias p='pip install'
alias d='rm -rf'
alias ex ='unzip'
alias f='mkdir'
alias z='m ~/.zshrc'
alias cdd='/data/data/com.termux/files/home/storage/downloads'
alias ax='acodeX-server'
alias rr='source ~/.zshrc'
