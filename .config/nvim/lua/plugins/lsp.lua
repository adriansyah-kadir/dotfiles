return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      local cmp = require'cmp'
      local wk = require'which-key'
      local luasnip = require('luasnip')

      wk.register({
	["gd"] = {vim.lsp.buf.definition, "goto definition"},
	["<leader>ca"] = {vim.lsp.buf.code_action, "code action"},
	["<leader>cr"] = {vim.lsp.buf.rename, "rename"},
      })

      cmp.setup({
	snippet = {
	  expand = function(args)
	    luasnip.lsp_expand(args.body)
	  end,
	},
	window = {
	  completion = cmp.config.window.bordered(),
	  documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
	  ['<c-b>'] = cmp.mapping.scroll_docs(-4),
	  ['<c-f>'] = cmp.mapping.scroll_docs(4),
	  ['<C-Space>'] = cmp.mapping(function() if cmp.visible() then cmp.close() else cmp.complete() end end),
	  ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	  ['<TAB>'] = cmp.mapping(function (fallback)
	    if cmp.visible() then
	      cmp.select_next_item()
	    elseif luasnip.jumpable(1) then
	      luasnip.jump(1)
	    else
	      fallback()
	    end
	  end, {'i', 's'}),
	  ['<S-TAB>'] = cmp.mapping(function(fallback)
	    if cmp.visible() then
	      cmp.select_prev_item()
	    elseif luasnip.jumpable(-1) then
	      luasnip.jump(-1)
	    else
	      fallback()
	    end
	  end, {'i', 's'}),
	}),
	sources = cmp.config.sources({
	  { name = 'nvim_lsp' },
	  { name = 'luasnip' },
	}, {
	  { name = 'buffer' },
	})
      })

      cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
	  { name = 'buffer' }
	}
      })

      cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
	  { name = 'path' }
	}, {
	  { name = 'cmdline' }
	})
      })

    end,
    dependencies = {
      {
	"folke/neodev.nvim",
	config = true,
      }
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {"williamboman/mason.nvim"},
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      require("mason").setup()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers({
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {
	      capabilities = capabilities,
	    }
        end,
      })
    end
  },
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    config = function ()
      require('aerial').setup()
      vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle<cr>')
    end,
  },
  {
    'hrsh7th/cmp-nvim-lsp'
  },
  {
    'hrsh7th/cmp-buffer'
  },
  {
    'hrsh7th/cmp-path'
  },
  {
    'hrsh7th/cmp-cmdline'
  },
  {
    'hrsh7th/nvim-cmp'
  },
  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip' }
}
