return {
  {
    "windwp/nvim-autopairs",
    config = function ()
      require("nvim-autopairs").setup({
	check_ts = true,
      })
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = true
  },
  {
    "tpope/vim-surround",
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
    config = true
  },
  {
    'ggandor/leap.nvim',
    config = function ()
    	require('leap').create_default_mappings()
	vim.cmd('autocmd ColorScheme * lua require("leap").init_highlight(true)')
    end
  },
  {
    'tpope/vim-repeat'
  },
}
