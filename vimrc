set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'slim-template/vim-slim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'mattn/emmet-vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'othree/html5.vim'

call vundle#end()

filetype plugin indent on
syntax on

let mapleader=","
let g:user_emmet_leader_key='<C-e>'
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

color jellybeans

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set softtabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set splitright

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif


" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

"Quickly save the current buffer
noremap <Leader>s :update<CR>

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" NERDTree
nmap <leader>n :NERDTreeTabsToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" CtrlP
nnoremap <silent> t :CtrlP<cr>
"let g:ctrlp_working_path_mode = 2
"let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|tmp'

"let g:Powerline_symbols = 'fancy

" Quit with :Q
command -nargs=0 Quit :qa!
