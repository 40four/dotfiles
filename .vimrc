"function! s:fix_plug_path(path)
  "if has('win32unix')
  "\ && executable('cygpath')
  "\ && executable('git')
  "\ && split(system('git --version'))[2] =~# 'windows'
	"return substitute(system('cygpath -m ' . a:path), '\r*\n\+$', '', '')
  "endif
  "return a:path
"endfunction
"let g:plug_home = s:fix_plug_path($HOME . '/vimfiles/plugged')

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'myusuf3/numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'lfv89/vim-interestingwords'
Plug 'majutsushi/tagbar'

call plug#end()

" Try to determine OS
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

"Put backup files somewhere besides the working dir
if g:os == 'Windows'
	set undodir=~/vimfiles/_undo//
	set backupdir=~/vimfiles/_backup//
	set directory=~/vimfiles/_swp//
else
	set undodir=~/.vim/.undo//
	set backupdir=~/.vim/.backup//
	set directory=~/.vim/.swp//
endif

set number

" COC stuff
" TextEdit might fail if hidden is not set.
set hidden
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

syntax on

" important!!
set termguicolors

set shellslash

"Sonokai color options
" the configuration options should be placed before `colorscheme sonokai`
let g:sonokai_style = 'andromeda'
"let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai

set tabstop=4
set shiftwidth=4

"I think Airline wants this?
set laststatus=2

"Map shortcuts for NERDTree
nmap <C-n> :NERDTree <CR>
nmap <C-N> :NERDTreeFind <CR>

"set rtp+=~/.fzf

set updatetime=100

"Show a visible line at the 80th char column
set colorcolumn=80

filetype plugin on

"Fix file path slashes for windows
"set shellslash

"Show the count when searching
set shortmess-=S

"Control S save
nmap <C-s> :w <CR>

"Make current window use full screen
nmap <Leader>z <C-w>\| <C-w>_
"Reset all windows back to equal sizes
nmap <Leader>Z <C-w>=
"Custom window movevment, leader +wasd for direction
nmap <Leader>a <C-w>h
nmap <Leader>d <C-w>l
nmap <Leader>w <C-w>k
nmap <Leader>s <C-w>j

"Togge TagBar
"nmap <F8> :TagbarToggle<CR>
nmap <F8> :TagbarOpenAutoClose<CR>

set backspace=indent,eol,start
