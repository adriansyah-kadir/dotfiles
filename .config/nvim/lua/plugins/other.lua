---@diagnostic disable: missing-fields

return {
	{
		"windwp/nvim-autopairs",
		config = function ()
			require("nvim-autopairs").setup()
		end
	},
	{
		'hrsh7th/vim-vsnip'
	},
	{
		'nvim-telescope/telescope.nvim',
		config = function ()
			require('telescope').setup{
				defaults = {
					file_ignore_patterns = {
						"node_modules",
						".git"
					},
				},
			}
		end
	},
	{
		'nvim-treesitter/nvim-treesitter-textobjects'
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function ()
			require('nvim-treesitter.configs').setup{
				highlight = {
					enable = true
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<A-o>",
						node_incremental = "<A-o>",
						scope_incremental = "<A-p>",
						node_decremental = "<A-i>",
					}
				},
				textobjects = {
					enable = true,
				},
				ensure_installed = {"svelte", "markdown", "typescript", "c"},
			}
		end
	},
	{
		'nvim-lua/plenary.nvim',
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
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function ()
			require('nvim-tree').setup()
		end
	},
	{
			'akinsho/flutter-tools.nvim',
			lazy = false,
			dependencies = {
					'nvim-lua/plenary.nvim',
					'stevearc/dressing.nvim', -- optional for vim.ui.select
			},
			config = function ()
				require("flutter-tools").setup{
					lsp = {
						color = {
							enabled = true
						},
						capabilities = require('cmp_nvim_lsp').default_capabilities()
					},
				}
			end,
	}
}
