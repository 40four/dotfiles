local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Plug 'honza/vim-snippets'
-- Plug 'sheerun/vim-polyglot'
-- Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install'] })
-- Plug 'junegunn/fzf.vim'
-- Plug 'airblade/vim-gitgutter'
-- Plug 'tpope/vim-fugitive'
-- Plug 'majutsushi/tagbar'
Plug 'sainnhe/sonokai'
-- Plug 'ludovicchabant/vim-gutentags'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
-- Plug 'SirVer/ultisnips'
-- Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug('L3MON4D3/LuaSnip', { tag = 'v2.*', ['do'] = 'make install_jsregexp'})
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'RRethy/vim-illuminate'
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = vim.fn[':TSUpdate'] })
Plug 'windwp/nvim-autopairs'
Plug 'numToStr/Comment.nvim'
Plug 'virchau13/tree-sitter-astro'
Plug 'lewis6991/gitsigns.nvim'
Plug "rafamadriz/friendly-snippets"
Plug 'sindrets/diffview.nvim'

vim.call('plug#end')

require('plugins.luasnip')
require('plugins.lspconfig')
require('plugins.cmp')
require('plugins.nvim-tree')
require('plugins.lualine')
require('plugins.illuminate')
require('plugins.nvim-treesitter')
require('plugins.nvim-autopairs')
require('plugins.comment')
require('plugins.gitsigns')
