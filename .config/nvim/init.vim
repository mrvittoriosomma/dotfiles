set number
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap

" Plugin

call plug#begin()
" Theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Line
Plug 'lukas-reineke/indent-blankline.nvim'

" Line Bottom
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

" Vim Script
" Script Theme
colorscheme tokyonight

" Script Line Function
lua << END
vim.opt.list = true
require("indent_blankline").setup {
    show_end_of_line = true,
}
END
" Script Bottom Line
lua << END
require('lualine').setup()
END

