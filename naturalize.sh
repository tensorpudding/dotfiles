#!/usr/bin/env bash
#
# Script to pull dotfiles and put them in the right place
#

function backup {
    if [ -f $HOME/$1 ]; then
        echo "* Backing up $HOME/$1 to $HOME/$1.backup"
        mv $HOME/$1 $HOME/$1.backup
    fi
}

function link_with_new_name {
    echo "* Linking $PWD/$1 to $HOME/$2..."
    ln -s $PWD/$1 $HOME/$2
}

function link {
    link_with_new_name "$1" "$1"
}

function backup_and_link {
    backup $1
    link $1
}

ksh() {
    backup ".kshrc"
    backup ".profile"
    link_with_new_name "ksh.kshrc" ".kshrc"
    link_with_new_name "ksh.profile" ".profile"
}

bash() {
    backup_and_link ".bash_profile"
    backup_and_link ".bashrc"
    backup_and_link ".bash"
}

# tmux() {
#     backup_and_link ".tmux.conf"
# }

# screen() {
#     backup_and_link ".screenrc"
# }

# vim() {
#     backup_and_link ".vimrc"
# }

# emacs() {
#     backup_and_link ".emacs"
# }

# xsession() {
#     backup_and_link ".xsession"
# }

[ $1 = 'ksh' ] && ksh
[ $1 = 'bash' ] && bash
# [ $1 = 'tmux' ] && tmux
# [ $1 = 'screen' ] && screen
# [ $1 = 'vim' ] && vim
# [ $1 = 'emacs' ] && emacs
# [ $1 = 'xsession' ] && xsession
