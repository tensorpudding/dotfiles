# .cshrc

alias tmux      ~/.bash/tmux.sh
alias cp        cp -v
alias mv        mv -v
alias ec        emacsclient -nw
alias halt      halt -p
alias mkdir     mkdir -v
alias pkg_add   pkg_add -r
alias grep      grep --color=auto
alias ls        ls -FG
alias ln        ln -v

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/local/games $HOME/bin)

setenv EDITOR vi
setenv PAGER less
setenv BLOCKSIZE K

if ($?prompt) then
    set prompt = "`/bin/hostname -s`# "
    set filec
    set history = 100
    set savehist = 100
    set mail = (/var/mail/$USER)
    if ( $?tcsh ) then
	bindkey "^W" backward-delete-word
	bindkey -k up history-search-backward
	bindkey -k down history-search-forward
    endif
endif
