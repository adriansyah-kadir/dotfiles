local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	 'neovim/nvim-lspconfig',
	 'hrsh7th/nvim-cmp',
	 'hrsh7th/cmp-buffer',
	 'hrsh7th/cmp-nvim-lsp',
	 'williamboman/mason-lspconfig.nvim',
	 'quangnguyen30192/cmp-nvim-ultisnips',
	 'williamboman/mason.nvim',
	 'SirVer/ultisnips',
	 'tjdevries/colorbuddy.nvim',
	 'svrana/neosolarized.nvim',
	 'windwp/nvim-autopairs',
	 'nvim-telescope/telescope.nvim',
	 'nvim-treesitter/nvim-treesitter',
	 'nvim-lua/plenary.nvim',
	 'othree/html5.vim',
	 'pangloss/vim-javascript',
	 { 'evanleck/vim-svelte', branch = 'main' },
	 'prisma/vim-prisma',
	 'folke/neodev.nvim',
})
