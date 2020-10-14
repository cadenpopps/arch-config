alias x='exit'


## SCRIPTS ##

alias neo='~/scripts/neo.sh'
alias tags='ctags --options=$HOME/.config/ctags/config.ctags -Rf .tags'
alias bg='. ~/scripts/bg'
alias bkb='bash /home/cadenpopps/qmk/build.sh'
alias fkb='bash /home/cadenpopps/qmk/flash.sh'


## SHORTCUTS ##

alias brightness='pkexec brillo -u 10000 -S '
alias volume='pulseaudio-ctl set '
alias mute='pulseaudio-ctl mute'
alias volup='pulseaudio-ctl up'
alias voldown='pulseaudio-ctl down'
alias screenshot='deepin-screenshot -f -s ~/images/screenshots'


alias ehttpd='sedhttpd '
alias rhttpd='sudo httpd -k restart'

alias eba='vim ~/.config/bash/.bash_aliases'
alias evars='vim ~/.config/bash/.bash_vars'
alias ecolors='vim ~/vim/colors/cadenpopps.vim'
alias ebrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias pbrc='pullBashrc'
alias cbrc='commitBashrc'
alias evrc='vim $_VIM_DIR/vimrc'

alias customLS='ls -A -p --group-directories-first --color=always'
alias l='ls --format=vertical'
alias ls='customLS'
alias lss='ls --format=single-column -s --block-size=m'
alias lsa='ls -a -t --format=verbose -s --block-size=k'

alias cdl='cdls'
alias cdv='cd $_VIM_DIR'
alias cdd='cd /mnt/c/Users/Caden/Desktop'
alias cdc='cd /mnt/c/Users/Caden/Desktop/cpp'
alias cdrl='cd /mnt/c/Users/Caden/Desktop/RL-Insider'
alias cdp='cd ~/$_PROJECTS_DIR'
alias cds='cd ~/school/'
alias cddu='cd ~/$_DUNGEON_DIR;echo;git branch;echo'
alias cdvim='cd $_VIM_DIR'
alias cdkb='cd ~/qmk/keyboards/cadenpopps/'
alias cdkbm='cd ~/qmk/keyboards/cadenpopps/keymaps/cadenpopps/'
alias cdqmk='cd ~/qmk/'


## GIT ##
alias gp='git push'
alias gpu='git push -u origin HEAD'
alias gc='gitcommit'
alias gcp='gitcommitpush'
alias gm='gitmerge'
alias gnew='gitremote'
alias gpl='git pull --all'
alias gf='git fetch --all'
alias gch='gitcheckout'
alias glg='git log --pretty=format:"%C(reset)%h %ad%C(yellow bold)%d %Creset %C(cyan bold)%s" --decorate --date=short'
alias gb='echo;git branch;echo'
alias gbc='git branch'
alias gbd='git branch -D'
alias gr='git remote'
alias grv='git remote -v'

alias ac='/usr/bin/git --git-dir=$HOME/.arch-config.git/ --work-tree=$HOME/'
alias aca='/usr/bin/git --git-dir=$HOME/.arch-config.git/ --work-tree=$HOME add'
alias acc='/usr/bin/git --git-dir=$HOME/.arch-config.git/ --work-tree=$HOME commit -m'
# alias ac=archconfig


