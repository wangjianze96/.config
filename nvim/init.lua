-- My neovim configurations, for neovim 0.12.0+
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.pack.add({
	'https://github.com/mofiqul/dracula.nvim', -- Dracula theme
	'https://github.com/nvim-lualine/lualine.nvim', -- statusline
	'https://github.com/nvim-mini/mini.pairs', -- autopairs for brackets and quotations
	'https://github.com/saghen/blink.lib',
	'https://github.com/saghen/blink.cmp', -- completion plugin
	'https://github.com/neovim/nvim-lspconfig', -- collection of LSP server configurations
	'https://github.com/rafamadriz/friendly-snippets', -- Snippets collection
	'https://github.com/nvim-tree/nvim-web-devicons', -- icons
	'https://github.com/nvim-tree/nvim-tree.lua', -- file tree
})

-- set transparent background for dracula theme
require('dracula').setup({
	transparent_bg = true
})

-- enable lualine
require('lualine').setup()

-- enable mini.pairs
require('mini.pairs').setup()

-- enable blink.cmp
local cmp = require('blink.cmp')
cmp.build():wait(60000)
cmp.setup({
	keymap = { preset = 'super-tab' }
})

-- enable nvim-tree
require('nvim-tree').setup()

-- need to install lsp servers for the enabled languages, use package manager not npm.
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('pyright')
vim.lsp.enable('gopls')
vim.lsp.enable('clangd')
vim.lsp.enable('texlab')

vim.cmd[[colorscheme dracula]]
