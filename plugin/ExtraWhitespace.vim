hi ExtraWhitespace guifg=#FF0000 guibg=#FF0000

match ExtraWhitespace /\s\+$/

augroup ExtraWhitespace
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()
augroup END
