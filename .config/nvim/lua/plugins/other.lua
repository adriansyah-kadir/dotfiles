---@diagnostic disable: missing-fields
return {
	{
		"nvim-tree/nvim-tree.lua",
		config = function ()
			require('nvim-tree').setup{}
		end
	},
	{
		"windwp/nvim-autopairs",
		config = function ()
			require("nvim-autopairs").setup()
		end
	},
	{
		'SirVer/ultisnips',
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
				ensure_installed = {"svelte", "markdown", "typescript", "c"}
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
		"tpope/vim-surround"
	},
	{
		"ggandor/leap.nvim",
		config = function ()
			require('leap').add_default_mappings()
		end
	}
}
