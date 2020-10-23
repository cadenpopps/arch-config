## STARTUP ##

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#[[ -z $XDG_CONFIG_HOME ]] && export XDG_CONFIG_HOME="$HOME/.config"
#stty -ixon

export XDG_PICTURES_DIR="$HOME/screenshots"

export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

## OPTIONS ##

shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s no_empty_cmd_completion
shopt -s extglob
shopt -s checkwinsize
set -o vi


## VARIABLES ##

export HISTCONTROL=ignoredups

#PS1='\[\033[38;2;190;190;239m\][\w]\[$(tput sgr0)\033[38;2;252;207;198m\] '
PS1='\[\e[m\][\w]\[$(tput sgr0)\e[m\] '


unset color_prompt force_color_prompt

export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore .ignore --ignore .git --nocolor --hidden -g ""'


## BINDINGS ##

#setxkbmap -option caps:escape
# input type:keyboard xkb_options caps:escape
# setxkbmap -device -option caps:escape
# setxkbmap -device caps:escape

if [[ -f $HOME/.config/consolekeymap ]]; then
	sudo loadkeys $HOME/.config/consolekeymap
fi

bind 'TAB':menu-complete
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"


## FUNCTIONS ##

function gitcommit(){
	git add . &&
	git commit -a -m "$*"
}
function gitmerge(){
	git merge "$*"
}
function gitpush() {
	git push "$*"
}
function gitcommitpush(){
	gitcommit "$*" &&
	gp
}
function gitremote(){
	git remote add origin git@github.com:cadenpopps/"$*".git
}
function gitcheckout(){
	git checkout "$*"
}


#env=~/.ssh/agent.env
#
#agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }
#
#agent_start () {
#	(umask 077; ssh-agent >| "$env")
#		. "$env" >| /dev/null ; }
#
#		agent_load_env


function sedhttpd(){
	if [ -f $_HTTPD ]; then
		sudo sed -i "s|cadenpopps\/.*\"|cadenpopps\/projects\/$1\"|g" $_HTTPD
			$($_HTTPD_RESTART)
			fi
}

function sedhttpd_site(){
	sedhttpd "$_SITE_DIR\/$1"
}



## SOURCE FILES ##

if [[ -f ~/.config/bash/.bash_vars ]]; then
	. ~/.config/bash/.bash_vars
fi

if [[ -f ~/.config/bash/.bash_aliases ]]; then
	. ~/.config/bash/.bash_aliases
fi

if [[ -f ~/.fzf.bash ]]; then
	source ~/.fzf.bash
fi


## MOTD ##

if [[ -f /usr/bin/neofetch ]] && [[ -f ~/scripts/neo.sh ]]; then
	echo
	. ~/scripts/neo.sh
else
	echo
	echo 'Welcome, Caden'
	echo
fi
