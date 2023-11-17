local telescope = require("telescope.builtin")

vim.keymap.set('n', 'tf', function ()
	telescope.find_files({
		hidden = true,
	})
end)
vim.keymap.set('n', 'tb', "<cmd>Telescope buffers<cr>")
vim.keymap.set('n', 'tg', "<cmd>Telescope live_grep<cr>")
vim.keymap.set('n', '<c-p>', vim.cmd.Texplore)
vim.keymap.set('n', 'o', "o<esc>")
vim.keymap.set('n', 'O', "O<esc>")
vim.keymap.set('n', '<tab>', vim.cmd.tabnext)
vim.keymap.set('n', '<s-tab>', vim.cmd.tabprevious)
vim.keymap.set('n', '<s-t>', vim.cmd.tabnew)
