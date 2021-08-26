" inpired by https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/

" General options
set confirm
set undofile

" Indentation options
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Search options
set ignorecase
set smartcase

" Performance options
set lazyredraw

" Text-Rendering options
set linebreak

" UI options
set mouse=a
set number
set relativenumber
set title

" Remaps
"" 'Esc + confe' to edit the config files
nnoremap confe :e ~/.config/nvim/init.vim <CR>

"" 'Esc + confr' to reload vim
nnoremap confr :source ~/.config/nvim/init.vim <CR>

call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/argtextobj.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'

call plug#end()

colorscheme dracula
