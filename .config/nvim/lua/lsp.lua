local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

vim.keymap.set('n', 'gk', vim.lsp.buf.hover)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'ge', vim.lsp.buf.code_action)
-- cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn['UltiSnips#Anon'](args.body)
		end
	},
	mapping = {
		['<C-j>'] = cmp.mapping.scroll_docs(-4),
		['<C-k>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = function()
			if cmp.visible() then
				cmp.close()
			else
				cmp.complete()
			end
		end,
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'ultisnips' }, -- For ultisnips users.
	}, {
		{ name = 'buffer' },
	})
})

local capalibities = require('cmp_nvim_lsp').default_capabilities()

require('mason-lspconfig').setup_handlers{
	function (server_name)
		require('lspconfig')[server_name].setup{
			capalibities = capalibities
		}
	end
}
