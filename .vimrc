syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set belloff=all

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

" all plugins

" Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'dylanaraps/wal.vim'
Plug 'sirver/ultisnips'
Plug 'lervag/vimtex'
Plug '907th/vim-auto-save'

call plug#end()




"colorscheme gruvbox
colorscheme wal
":set background=dark


" cursor setting
" key mappings
inoremap jk <ESC>
inoremap kj <ESC>


"ulti snip config
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" vimtex confi
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/snippets']

hi clear Conceal
