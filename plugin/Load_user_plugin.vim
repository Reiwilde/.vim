" Plugin: Load_user_plugin
" Auteur: Morel Alexis
" Date: 11/03/2011

fu! Load_user_plugin(file)
    exec "so ".$VIMCONFIGDIR."/plugin/".a:file
endf
