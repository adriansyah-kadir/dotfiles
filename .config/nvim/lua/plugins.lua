---@diagnostic disable: missing-fields
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
		-- lsp stuff
	 'neovim/nvim-lspconfig',
	 'hrsh7th/nvim-cmp',
	 'hrsh7th/cmp-buffer',
	 'hrsh7th/cmp-nvim-lsp',
	 'hrsh7th/cmp-nvim-lsp-signature-help',
	 {
		 'williamboman/mason-lspconfig.nvim',
		 dependencies = 'williamboman/mason.nvim',
		 config = function ()
			 require('mason').setup({})
			 require('mason-lspconfig').setup({
				 ensure_installed = {"lua_ls", "svelte", "clangd", "tailwindcss", "tsserver"}
			 })
		 end
	 },
	 'quangnguyen30192/cmp-nvim-ultisnips',
	 {
	 'folke/neodev.nvim',
		config = function ()
			require('neodev').setup()
		end
	 },
		--
		--

		{
			'nvim-lualine/lualine.nvim',
			dependencies = 'nvim-tree/nvim-web-devicons',
			config = function ()
				require('lualine').setup{}
			end
		},
		{
			"nvim-tree/nvim-tree.lua",
			config = function ()
				require('nvim-tree').setup{}
			end
		},
	 'SirVer/ultisnips',
		{
		 'windwp/nvim-autopairs',
		 event = 'InsertEnter',
		 config = function ()
			 require('nvim-autopairs').setup()
		 end
		},
		{
			'nvim-telescope/telescope.nvim',
			config = function ()
				require('telescope').setup{
					defaults = {
						file_ignore_patterns = {
							"node_modules",
							".git"
						}
					}
				}
			end
		},
		{
		 'nvim-treesitter/nvim-treesitter',
		 config = function ()
			 require('nvim-treesitter.configs').setup{
				 highlight = {
					 enable = true
				 },
				 incremental_selection = {
					 enable = true
				 },
				 textobjects = {
					 enable = true
				 },
			 }
		 end
		},
	 'nvim-lua/plenary.nvim',
	 {
		 "dracula/vim",
		 name = "dracula-theme",
		 config = function()
			 vim.cmd("colorscheme dracula")
		 end
	 },
	 {
		 "folke/which-key.nvim",
		 event = "VeryLazy",
		 init = function()
			 vim.o.timeout = true
			 vim.o.timeoutlen = 300
		 end,
		 opts = {}
	 },
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function ()
			require('bufferline').setup()
		end
	},
	{
		"tpope/vim-surround"
	}
})
