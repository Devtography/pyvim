set nocompatible            " be IMproved, requied
filetype off                " required

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" tree file explore
Plugin 'preservim/nerdtree'
" git status flags on NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'
" code comment
Plugin 'preservim/nerdcommenter'
" auto complete
Plugin 'ycm-core/YouCompleteMe'
" code folding for Python
Plugin 'tmhedberg/SimpylFold'
" fancy statusline/tabline
Plugin 'itchyny/lightline.vim'
" git integration
Plugin 'tpope/vim-fugitive'
" indicates which lines have been modified in editor window
Plugin 'airblade/vim-gitgutter'
" syntax check
Plugin 'dense-analysis/ale'
" auto generates surround pairs
Plugin 'jiangmiao/auto-pairs'

" All of the plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just 
"                     :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to 
"                     auto-approve removal

" Non-plugin settings after this line
syntax on               " enable syntax highlighting
colorscheme desert      " set `desert` as default colour scheme
set autoindent          " indent when moving to the next while writing code
set colorcolumn=80      " show 80 line indicator
set encoding=utf-8      " show output in UTF-8 as YouCompleteMe requires
set expandtab           " expand tabs into spaces
set fileencoding=utf-8  " save file with UTF-8 encoding
set fileformat=unix     " save file with LF line endings
set laststatus=2        " show the statusline/tabline
set number              " show line numbers
set shiftwidth=4        " shift lines by 4 spaces for indent
set shell=bash          " set bash as default terminal
set showmatch           " show the matching part of the pair for [] {} & ()
set softtabstop=4       " for easier backspacing the soft tabs
set tabstop=4           " set tabs to have 4 spaces
set tws=15x0            " set terminal windows size
set updatetime=100      " reduce Vim default delay time from 4000ms to 100ms

" allow backspacing over everthing in insert mode
set backspace=indent,eol,start

" auto-switch between case-sensitive & case-insensitive search
set ignorecase
set smartcase

" split layout
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-w><C-L>
nnoremap <C-H> <C-W><C-H>

" code folding
set foldmethod=indent
set foldlevel=99
" enable folding with spacebar
nnoremap <space> za

" highlight unneccessary whitespaces
highlight BadWhitespace ctermbg=yellow guibg=yellow
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match
    \ BadWhitespace /\s\+$/

" hide colorcolumn in non-editor windows
au FileType fugitive,help,qf setlocal nonumber colorcolumn=
au BufEnter * if &ft == '' | setlocal nonumber colorcolumn= | endif

" enable all Python syntax highlighting features
let python_highlight_all=1

" plugin settings - NERDTree
map <C-\> :NERDTreeToggle<CR>
" open NERDTree automatically when vim starts up with no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && ! exists("s:std_in") | NERDTree | endif
" close vim if the only window left open is NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree")
    \ && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1    " show hidden file by default
let NERDTreeIgnore=['.git$[[dir]]', '.swp', '.DS_Store']

" plugin settings - NERD Commenter
map <C-_> <leader>ci
map <D-_> <leader>ci
map <C-/> <leader>ci

let g:NERDSpaceDelims=1

" plugin settings - SimpylFold
let g:SimpylFold_docstring_preview=1

" plugin settings - lightline
set noshowmode          " get rid of the redundant -- INSERT --
if !has('gui_running')
    set t_Co=256
endif

" plugin settings - YouCompleteMe
let g:ycm_semantic_triggers={ 'python': [ 're!\w{1}' ] }
let g:ycm_autoclose_preview_window_after_completion=1

" plugin settings - ale
let g:ale_linters={ 'python': ['pylint'] }
let g:ale_fixers={ 'python': ['yapf'] }
let g:ale_open_list=1
let g:ale_linters_explicit=1

" plugin settings - vim-gitgutter
highlight! link SignColumn LineNr
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
