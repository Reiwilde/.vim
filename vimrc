" Fichier de configuration
" Auteur: Morel Alexis 
" Date: 29/06/2013

let $VIMCONFIGDIR = fnamemodify(expand("$MYVIMRC"), ":p:h")

" fix true color in tmux
let &t_8f = "[38;2;%lu;%lu;%lum"
let &t_8b = "[48;2;%lu;%lu;%lum"

" Jeu de couleurs
colorscheme perso
" Active la coloration syntaxique
syntax enable
" Indentation selon le type de fichier
filetype plugin indent on

if !has("nvim")
    " Ne pas assurer la compatibilité avec Vi
    set nocp
endif

" Active l'auto indentation
set ai
" Permet l'effacement avec la touche Backspace
set backspace=2
set backup
set backupdir=$VIMCONFIGDIR/backup
" Colorier la colonne
set colorcolumn=101
" Mettre en valeur la ligne courante
set cursorline
" Mettre en valeur la colonne courante
set cursorcolumn
" Encodage des caractères en interne par défaut
set enc=utf-8
" Remplacer les tabulations par des espaces
set expandtab
" Encodage par défaut pour les nouveaux fichiers
set fenc=utf-8
" Encodage à tester
"set fencs=
" Format par défaut pour les nouveaux fichiers
set ff=unix
" Format à tester
set ffs=unix,dos,mac
"set fillchars=
"set foldcolumn=1
set foldmethod=marker
" Taille de l'historique de la barre de commandes
set history=50
" Ignore la case dans les recherches
set ignorecase
" Affiche une barre de statut en bas des fenêtres
set ls=2
" Ne charge pas automatiquement les greffons
set noloadplugins
" Numéroter les lignes
set nu
" Montre toujours la position du curseur
"set ruler
"set rulerformat=
" Nombre d'espace lors d'une auto indentation
set shiftwidth=4
" Voir les commandes en cour dans la barre de commandes
set showcmd
set showmatch
"set showmode
" Sensible à la case lors de recherches avec majuscule
set smartcase
" Nombre d'espaces lors de copier coller avec tabulation
set softtabstop=4
" Active la correction orthographique
set spell
" Langue de la correction orthographique
set spelllang=en
" Ajoute les nouvelles fenêtres en dessous
set splitbelow
" Ou à droite
set splitright
" Montrer la barre d'onglets quand plus d'un onglet est ouvert
set stal=1
" Nombre d'espaces lors d'une tabulation
set tabstop=4
" Utilise les couleurs du gui dans le terminal
set termguicolors
" Revient à la ligne lorsqu'elle dépasse de la fenêtre
set wrap

" Chargement des plugins
so $VIMCONFIGDIR/plugin/Load_user_plugin.vim
" Barre d'onglet
call Load_user_plugin("Tabline.vim")
" Barre d'état
call Load_user_plugin("Statusline.vim")
call Load_user_plugin("Foldlabel.vim")
