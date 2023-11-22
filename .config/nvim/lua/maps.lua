local telescope = require("telescope.builtin")
local wk = require("which-key")

wk.register({
	["<leader>"] = {
		["f"] = {
			name = "find",
			["f"] = {function () telescope.find_files({hidden = true}) end, "find files on current workspace"},
			["g"] = {telescope.live_grep, "live grep"},
		},
		--["w"] = {"<C-w>", "window shortcut <C-w>"},
		["e"] = {vim.cmd.NvimTreeOpen, "open file browser"},
		["x"] = {vim.cmd.bd, "delete current buffer"},
	},
	["g"] = {
		["b"] = {vim.cmd.bn, "next buffer"},
		["B"] = {vim.cmd.bp, "prev buffer"},
	},
	["]d"] = {vim.diagnostic.goto_next, "goto next diagnostic"},
	["[d"] = {vim.diagnostic.goto_prev, "goto prev diagnostic"},
})

vim.api.nvim_set_keymap("n", "o", "o<esc>", {desc = "newline below current line"})
vim.api.nvim_set_keymap("n", "O", "O<esc>", {desc = "newline above current line"})
vim.api.nvim_set_keymap('n', '<tab>', "<cmd>tabnext<cr>", {desc = "goto next tab"})
vim.api.nvim_set_keymap('n', '<s-tab>', "<cmd>tabprevious<cr>", {desc = "goto prev tab"})
vim.api.nvim_set_keymap('n', '<leader>w', "<C-w>", {desc = "window <C-w> shortcut"})
