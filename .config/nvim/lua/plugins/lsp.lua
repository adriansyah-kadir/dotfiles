return {
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
}
