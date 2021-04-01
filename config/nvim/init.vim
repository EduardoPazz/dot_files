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

" Code Folding options
set foldmethod=indent

" Remaps
"" 'Esc + confe' to edit the config files
nnoremap confe :e ~/.config/nvim/init.vim <CR>

"" 'Esc + confr' to reload vim
nnoremap confr :source ~/.config/nvim/init.vim <CR>
