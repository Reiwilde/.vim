fu! Foldlabel()
    let nFoldedLine = v:foldend - v:foldstart + 1

    let label = getline(v:foldstart)

    let label = substitute(label, '{{{\s*', '', '')

    let label = substitute(label, '<!--\s*', '', '')
    let label = substitute(label, '\s*-->', '', '')

    let label = substitute(label, '/\*\s*', '', '')
    let label = substitute(label, '\s*\*/', '', '')
    let label = substitute(label, '//\s*', '', '')

    let space = substitute(label, '^\s\(\s\{1,}\).*', '\1', '')

    let line = ''

    if (space != label)
        let space = substitute(space, '\s', '-', 'g')
        let label = substitute(label, '^\s\{1,}', ' ', '')
        let line .= space
    endif

    let line .= label . ' - '

    if (nFoldedLine <= 100000)
        let line .= nFoldedLine . ' '
    else
        let line .= '+100000 '
    endif

    return line
endfu

set foldtext=Foldlabel()
