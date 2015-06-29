VIM/GVim [Anubis language](https://fr.wikipedia.org/wiki/Anubis_%28langage%29) stuff
=========================

"compiler" contain a script which add the ability to compile an anubis file using the GVim "Make current project" button, it also parse/display the compiler output and go to the line of error if there is any

then, if you want to compile a file by pressing a key, here ya go

	nnoremap <F5> :make<CR>

add auto-completion for all included .anubis files

	setlocal include=^\s*\(read\|transmit\)\s*
	setlocal path+=/usr/share/anubis/library/
