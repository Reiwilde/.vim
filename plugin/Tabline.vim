fu! Firstbufgetlinenr()
    " Récupération du nombre de ligne du premier buffer de l'onglet
    let buflist = tabpagebuflist(tabpagenr())
    let firstbuflinenr = len(getbufline(buflist[0], 1, '$'))

    return firstbuflinenr
endf

fu! Tabline()
    let tabline = '%#TabMargin#'

    if g:firstbuflinenr == 1
        let tabline .= ' ' . g:firstbuflinenr . '  '
    elseif g:firstbuflinenr > 99
        let tabline .= g:firstbuflinenr . ' '
    else
        let tabline .= ' ' . g:firstbuflinenr . ' '
    endif

    " Récupération du numéro du dernier onglets ouverts,
    " listage des onglets,
    " parcoure la liste
    for i in range(tabpagenr('$'))
        " Comptage à partir de 1
        let i += 1

        " Récupération du nombre de fenêtre ouvertes dans l'onglet
        let winnr = tabpagewinnr(i)
        " Récupération de la liste des buffers ouverts dans l'onglet
        let buflist = tabpagebuflist(i)
        " Comptage du nombre de buffer différent ouverts dans l'onglet
        let oldnr = [0]
        for nr in buflist
            if oldnr[0] == 0
                let oldnr[0] = nr
                let bufnr = 1
            else
                call add(oldnr, nr)

                let double = -1

                for listnr in oldnr
                    if listnr == nr
                        let double += 1
                    endif
                endfor

                if double == 0
                    let bufnr += 1
                endif
            endif
        endfor

        " Récupération du nom du buffer actif dans l'onglet
        let bufname = fnamemodify(bufname(buflist[winnr-1]), ':t')

        " Affichage du nombre de buffer ouverts dans la barre d'onglets,
        " mettre en valeur l'onglet actif dans la barre d'onglets,
        " et affichage du numéro de l'onglet dans la barre d'onglets
        if i == tabpagenr()
            let tabline .= '%#TabBufNr#'.bufnr.'%'.i.'T%#TabNrSel# '.i.' %#TabLabelSel#'
        else
            let tabline .= '%#TabBufNr#'.bufnr.'%'.i.'T%#TabNr# '.i.' %#TabLabel#'
        endif

        " Affichage du nom du buffer actif dans la barre d'onglets
        if bufname !=# ''
            let tabline .= bufname
        else
            let tabline .= '[No Name]'
        endif

        " Affichage d'un '+' dans la barre d'onglets,
        " si une modification non enregistrer a eu lieu dans l'un des buffers
        for bufnr in buflist
            if getbufvar(bufnr, '&modified')
                if i == tabpagenr()
                    let tabline .= ' %#TabModifiedSel#+'
                else
                    let tabline .= ' %#TabModified#+'
                endif
                break
            endif
        endfor

        let tabline .= ' '
    endfor

    " Fin de la barre d'onglets
    let tabline .= '%#TabLineFill#'

    return tabline
endf

augroup Tabline
    autocmd!
    autocmd BufRead * :let g:firstbuflinenr = Firstbufgetlinenr()
    autocmd BufRead * :set tal=%!Tabline()
    autocmd TabEnter * :let g:firstbuflinenr = Firstbufgetlinenr()
    autocmd TabEnter * :set tal=%!Tabline()
    autocmd CursorMoved * :let g:firstbuflinenr = Firstbufgetlinenr()
    autocmd CursorMoved * :set tal=%!Tabline()
    autocmd CursorMovedI * :let g:firstbuflinenr = Firstbufgetlinenr()
    autocmd CursorMovedI * :set tal=%!Tabline()
augroup END

" Initialisation de la variable global
let g:firstbuflinenr = Firstbufgetlinenr()
" Personnalisation de la barre d'onglets
set tabline=%!Tabline()
