set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bufexplorer.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'universal-ctags/ctags'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-compiler'

Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colors desert
set ruler
set showcmd
set nu
set foldmethod=indent
set incsearch
set nohlsearch
set scrolljump=7
set scrolloff=7
set hidden
set ch=1
set autoindent
syntax on
set backspace=indent,eol,start whichwrap+=<,>,[,]
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
"set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
set smartindent
set fo+=cr
set sessionoptions=curdir,buffers,tabpages
set nobackup
set noswapfile

nmap <Space> <PageDown>
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/
vmap < <gv
vmap > >gv

function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>

set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t


filetype plugin on
au BufRead,BufNewFile *.phps    set filetype=php
au BufRead,BufNewFile *.thtml    set filetype=php
set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone
set completeopt-=preview
set completeopt+=longest
set mps-=[:]


nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>

map  <F4> :GitGutterToggle<cr>
vmap <F4> <esc>:GitGutterToggle<cr>
imap <F4> <esc>:GitGutterToggle<cr>

map  <F6> :NERDTreeToggle<cr>
vmap <F6> <esc>:NERDTreeToggle<cr>
imap <F6> <esc>:NERDTreeToggle<cr>

map  <F8> :TagbarToggle<cr>
vmap <F8> <esc>:TagbarToggle<cr>
imap <F8> <esc>:TagbarToggle<cr>


map <C-a> :BufExplorer<CR>
vmap <C-a> <esc>:BufExplorer<cr>
imap <C-a> <esc>:BufExplorer<cr>


set encoding=utf-8
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
