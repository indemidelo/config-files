set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
"colorscheme molokai
colorscheme koehler
set autochdir
"cd C:/Inpeco
set guifont=Dejavu\ Sans\ Mono:h9
set tabstop=2
set shiftwidth=2
set expandtab
set number
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Roba inserita da me proveniente da getting home to vim
filetype off
"call pathogen#runtime_append_all_bundles()
filetype plugin indent on
"set modelines = 0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set belloff=all
"set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
let mapleader = "\<Space>"
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault "per sostituire foo con bar nella riga corrente: :%s/foo/bar/
set incsearch
set showmatch
set hlsearch
" ,<space> nasconde tutte le espressioni cercate
nnoremap ,<space> :noh<cr>
" tab rimappato per andare sempre alla fine della riga
vnoremap <tab> $
nnoremap <tab> $
onoremap <tab> $
" handling long lines correctly
set wrap
"set textwidth = 79
"set formatoptions = qrn1
set colorcolumn=80
"reselect the text just pasted
nnoremap <leader>V V`]
" navigo tra i buffer
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""
"""MIE MODIFICHE""" 
"""""""""""""""""""

" 0 rimappato per andare sempre all'inizio del testo scritto
" e non alla posizione 0 della riga
nnoremap 0 0w

" spezzo verticalm/orizz e mi sposto
nnoremap <leader>s <C-w>s<C-w>l
nnoremap <leader>v <C-w>v<C-w>l

"chiudere finestre con leader 
nnoremap <leader>h :hide<cr>

"salvare con leader w
nnoremap <leader>w :w<cr>

" salva con doppia virgola
nnoremap ,, :w<cr>

" copy & paste to system clipboard with <leader>p and <leader>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" iniziare la sessione con una finestra più grande
set lines=50 columns=100

"Redo with U instead of <Ctrl+R>
noremap U <C-r>

"Remap <F2> to save the script and execute it in python 
autocmd FileType python nnoremap <leader><leader> :w<CR> :!python %<CR>

" Quickly open/reload vim
nnoremap <leader>ev :vsplit $MYVIMRC<CR>  
nnoremap <leader>sv :source $MYVIMRC<CR>

" put all swap, backup and undo files in separate folders
set backupdir=C:\Inpeco\vim_old\backup
set directory=C:\Inpeco\vim_old\swap
set undodir=C:\Inpeco\vim_old\undo

" setup for vundle
filetype off                  " required

" Stop vim from removing indentation on empty line
"inoremap <CR> <CR>x<BS>
"nnoremap o ox<BS> 
"nnoremap O Ox<BS>

set path+=**

" colorscheme solarized
"syntax enable
"set background=dark
"colorscheme solarized

" vado direttamente nella cartella ../../simulator/ivt
nnoremap <leader>\ :e C:\Inpeco\simulator\ivt<cr>

"esc adesso si comporta come dovrebbe
inoremap <esc> <esc>`^

"esc quando mando freccia su o giu
inoremap <silent> <Up> <ESC>`^<Up>
inoremap <silent> <Down> <ESC>`^<Down>
