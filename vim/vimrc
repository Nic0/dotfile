colorscheme desert
if has("gui_running")
  set gfn=Inconsolata\ 13
  "set gfn=Droid\ Sans\ Mono\ 12
  "set gfn=Bitstream\ Vera\ Sans\ Mono\ 11
  "set gfn=Monaco\ 11
"  set gcr=a:blinkon0
"  set go-=T
"  set go-=m
"  set go+=c
endif

syntax on
" J'utilise des couleurs spécifique au fond foncé
set background=dark
" lbr: laisse les mots entier pour longues lignes
set lbr
set showcmd
set ignorecase
" Activation du support de la souris
set mouse=a

set hidden
" Indentation automatique
set autoindent
set ls=2 "barre de statu en permanance
hi statusline ctermfg=black 
set nocp
set si
set so=3
set siso=2 "toujours 2lignes avant la fin
set sm "affiche la parenthèse correspondante
set title
set wildmenu
set noea
set pt=<F11>
" Redefinition de l'indentation
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set textwidth=79
set backspace=2

" Personnalisation de la ligne de status
set statusline=%F%m%r%h%w\ [%Y]\ [%03l-%03v]\ [%p%%]
set laststatus=0
let php_htmlInStrings=1
filetype plugin indent on
au BufRead,BufNewFile *.rst set textwidth=0

"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplorerMoreThanOne = 0
"let g:miniBufExplModSelTarget = 0
"let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplVSplit = 20
let g:miniBufExplSplitBelow=1

map <c-w><c-t> :WMToggle<cr>
let mapleader = ","
map <leader>d :Dox<cr>
map <leader>g :GitCommit<cr>
" Navigation dans les buffeurs
map <leader>t :bp<cr>
map <leader>s :bn<cr>
" vérification de la syntaxe pour PHP
map <leader>p :!/usr/bin/php -l %<cr>
" show invisible char
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"autocompletion fichier
set wildmode=longest,list

" Use the arrows to something usefull
"map <right> :bn<cr>
"map <left> :bp<cr>

" Numéro de ligne
set number
highlight lineNr ctermfg=blue

" Correcteur orthographique en francais
" Utile pour mutt
set spelllang=fr

" Replace espace insécable par X sauf pour .rst
imap   X
au BufRead,BufNewFile *.rst imap    
au BufRead,BufNewFile *.txt imap    

" Folding
"map <leader>c zF
map <leader>r za
" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :wq<cr>


nmap <F1> :set spell!<CR>
nmap <F2> :vsp<CR>
nmap <F4> :TlistToggle<CR>
nmap <F3> :badd 
nmap <F5> <Esc>:bprev<CR>
nmap <F6> <Esc>:bnext<CR>
map <F10> :NERDTreeToggle<CR>


" gestion de xclip
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

" On active le support pour twig
au BufRead,BufNewFile *.twig set syntax=htmljinja

nmap <F9> ggO<?php<CR><CR><ESC>"%PdF/r;:s#/#\\#g<CR>Inamespace  <ESC>d/[A-Z]<CR>Goclass <C-R>=expand("%:t:r")<CR><CR>{<CR>


" Taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 40
" remap le saut de fichier/class/fnt avec ctags
nmap <leader>d <C-t>
nmap <leader>v <C-]>

" Le bépo, c'est le bien !
source /etc/vimrc.bepo

" Templates
au bufNewFile *.php 0r /usr/share/vim/vimfiles/template/php.php
