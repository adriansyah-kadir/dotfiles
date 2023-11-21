local telescope = require("telescope.builtin")
local wk = require("which-key")


wk.register({
	["<leader>"] = {
		["f"] = {
			name = "find",
			["f"] = {function () telescope.find_files({hidden = true}) end, "find files on current workspace"},
			["g"] = {telescope.live_grep, "live grep"},
		},
		["w"] = {"<C-w>", "window shortcut <C-w>"},
		["e"] = {vim.cmd.NvimTreeToggle, "open file browser"},
	},
	["g"] = {
		["b"] = {
			name = "buffer",
			n = {vim.cmd.bn, "next buffer"},
			N = {vim.cmd.bp, "prev buffer"},
		}
	}
})

vim.keymap.set('n', 'o', "o<esc>")
vim.keymap.set('n', 'O', "O<esc>")
vim.keymap.set('n', '<tab>', vim.cmd.tabnext)
vim.keymap.set('n', '<s-tab>', vim.cmd.tabprevious)
