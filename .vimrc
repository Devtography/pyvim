set nocompatible            " be IMproved, requied
filetype off                " required

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" tree file explore
Plugin 'preservim/nerdtree'
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
" syntax check
Plugin 'vim-syntastic/syntastic'
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
set encoding=utf-8      " show output in UTF-8 as YouCompleteMe requires
set expandtab           " expand tabs into spaces
set fileencoding=utf-8  " save file with UTF-8 encoding
set fileformat=unix     " save file with LF line endings
set laststatus=2        " show the statusline/tabline
set number              " show line numbers
set shiftwidth=4        " shift lines by 4 spaces for indent
set showmatch           " show the matching part of the pair for [] {} & ()
set softtabstop=4       " for easier backspacing the soft tabs
set tabstop=4           " set tabs to have 4 spaces

highlight cursorcolumn cterm=NONE ctermbg=darkgrey ctermfg=white
    \ guibg=darkgrey guifg=white

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

" plugin settings - NERDTree
map <C-\> :NERDTreeToggle<CR>

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

" plugin settings - syntasatic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_python_checkers=['pylint']

" enable all Python syntax highlighting features
let python_highlight_all=1

" highlight unneccessary whitespaces
highlight BadWhitespace ctermbg=yellow guibg=yellow
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match
    \ BadWhitespace /\s\+$/

