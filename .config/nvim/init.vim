
set backspace=2
set hlsearch
set noautoread

let g:python3_host_prog = "/usr/bin/python3"
let mapleader = "\<Space>"

set ts=4
set softtabstop=4

set ignorecase
set smartcase

set shiftwidth=0 " <>=   0 matches ts
set et
au BufNewFile,BufRead *.py
    \ set softtabstop=4 " tab
    \ set ts=4
    \ set encoding=utf-8
    "\ set autoindent
    \ match BadWhitespace /\s\+$/

highlight BadWhitespace ctermbg=red

au BufNewFile,BufRead *.js, *.html, *.css
    \ set ts=2
    \ set softtabstop=2

autocmd Filetype go setlocal ts=4 noet

autocmd FileType go map <leader>r :YcmRestartServer<cr>:GoModReload<cr>
autocmd FileType go map <leader>d :GoDef<cr>

autocmd FileType python map <leader>d :YcmCompleter GoTo<cr>

" noequalalways (don't auto-size all panes when one closes
set noea

syn on
" hi MatchParen term=reverse ctermbg=6 guibg=DarkCyan ctermfg=black
"
set conceallevel=1
set noerrorbells

set clipboard=unnamed,unnamedplus

set number relativenumber

filetype plugin indent on

autocmd Filetype ts setlocal tabstop=2

command! Num :set number! relativenumber!
command! Ps :set paste!
command! Bd e #|bd #

map <leader>n <esc>:bn<cr>
map <leader>p <esc>:bp<cr>
map <leader>c "+y
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<cr>

call plug#begin()

"Plug 'davidhalter/jedi-vim'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'

Plug 'Valloric/YouCompleteMe'

Plug 'tmhedberg/simpylfold'

Plug 'vim-scripts/indentpython.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

"let g:jedi#completions_enabled=0
"let g:jedi#usages_command = "<leader>u"

set t_Co=256

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"let g:deoplete#enable_at_startup = 1

let g:SimplyFold_docstring_preview = 1

let g:ycm_extra_conf_globlist = ['!~/.local/share/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py']
let g:ycm_autoclose_preview_window_after_completion=1

set noshowmode
set laststatus=2
set showtabline=2

set background=dark

set hidden

set foldlevel=2
