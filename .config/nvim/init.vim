
set backspace=2
set hlsearch
set noautoread

let g:python3_host_prog = "/usr/bin/python3"
let mapleader = "\<Space>"

set ignorecase
set smartcase

set shiftwidth=0 " <>=   0 matches ts
set softtabstop=4 " tab
set ts=4
set et

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

call plug#begin()

Plug 'davidhalter/jedi-vim'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'tmhedberg/simpylfold'

call plug#end()

let g:jedi#completions_enabled=0
let g:jedi#usages_command = "<leader>u"

set t_Co=256

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:deoplete#enable_at_startup = 1

let g:SimplyFold_docstring_preview = 1

set noshowmode
set laststatus=2
set showtabline=2

set background=dark

set hidden

set foldlevel=2
