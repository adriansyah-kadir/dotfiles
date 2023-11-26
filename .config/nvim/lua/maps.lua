local telescope = require("telescope.builtin")
local wk = require("which-key")

wk.register({
	["<leader>"] = {
		["f"] = {
			name = "find",
			["f"] = {function () telescope.find_files({hidden = true}) end, "find files on current workspace"},
			["g"] = {telescope.live_grep, "live grep"},
		},
		["e"] = {"<cmd>15Lexplore %:p:h<cr>", "open current file folder"},
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
vim.api.nvim_set_keymap('n', '<tab>', "<cmd>bnext<cr>", {desc = "goto next buffer"})
vim.api.nvim_set_keymap('n', '<s-tab>', "<cmd>bprevious<cr>", {desc = "goto prev buffer"})
vim.api.nvim_set_keymap('t', '<C-t>', "<C-\\><C-n>", {desc = "window <C-w> shortcut"})
