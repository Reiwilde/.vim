" Plugin: Statusline
" Auteur: Morel Alexis
" Date: 21/04/2012.

set statusline=%<
set statusline+=%f
set statusline+=\ %r
set statusline+=%m
set statusline+=%=
set statusline+=[%{&ff}]
set statusline+=[%{&fenc}]
set statusline+=[%L]
set statusline+=%y
set statusline+=\ \ \ \ (%l,%c)
set statusline+=\ %P
