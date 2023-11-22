---@diagnostic disable: missing-fields
local cmp = require('cmp')
local wk = require("which-key")

wk.register({
	["g"] = {
		["D"] = {vim.lsp.buf.declaration, "goto declaration"},
		["d"] = {vim.lsp.buf.definition, "goto definiton"}
	},
	["<leader>"] = {
		["c"] = {
			name = "code lsp",
			["a"] = {vim.lsp.buf.code_action, "open code action"}
		},
		["d"] = {
			name = "diagnostic",
			["l"] = {vim.diagnostic.setloclist, "list buffer"},
			["L"] = {vim.diagnostic.setqflist, "list all"}
		}
	}
})

-- cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

cmp.setup({
	preselect = "None",
	confirmation = { completeopt = 'menu,menuone,noinsert' },
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
		{ name = 'nvim_lsp_signature_help' },
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
