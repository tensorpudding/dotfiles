# .cshrc

alias tmux      ~/.bash/tmux.sh
alias cp        cp -v
alias mv        mv -v
alias ec        ~/bin/emacs.sh -nw
alias ecc       ~/bin/emacs.sh -n -c
alias mg        mg -n
alias halt      shutdown -p now
alias reboot	shutdown -r now
alias mkdir     mkdir -v
alias pkg_add   pkg_add -r
alias grep      grep --color=auto
alias ls        ls -FG
alias ln        ln -v

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/local/games $HOME/bin)

setenv EDITOR mg
setenv PAGER less
setenv BLOCKSIZE K

if ($?prompt) then
    if ($USER == root) then
	set prompt = "# "
    else
	set prompt = "$ "
    endif
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

# completions
complete cd 'C/*/d/'
complete rmdir 'C/*/d/'

complete which 'p/1/c/'
complete where 'p/1/c/'
complete man 'p/1/c/'

complete alias 'p/1/a/'
complete unalias 'p/1/a/'

complete unset 'p/1/s/'
complete set 'p/1/s/'

complete unsetenv 'p/1/e/'
complete setenv 'p/1/e/'

complete limit 'p/1/l/'

complete chown 'p/1/u/'

#
