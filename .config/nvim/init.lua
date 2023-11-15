require('plugins')
require('sources')
require('sets')
require('vars')
require('maps')
require('funcs')
require('commands')
require('autos')

require('neosolarized').setup{
	background = true
}
require('nvim-autopairs').setup()
require('neodev').setup()
require('mason').setup()
require('mason-lspconfig').setup()
require('lsp')
require('telescope').setup{
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"./.git/*"
		}
	},
}
