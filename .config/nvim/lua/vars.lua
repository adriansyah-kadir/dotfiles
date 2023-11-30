vim.g.clipboard = {
	name = 'wl-clipboard',
	copy = {
		['+'] = 'wl-copy',
		['*'] = 'wl-copy',
	},
	paste = {
		['+'] = 'wl-paste',
		['*'] = 'wl-paste',
	}
}
vim.g.mapleader = " "
vim.g.netrw_banner=0
vim.g.netrw_hide=1
vim.g.netrw_list_hide = "^\\./$"
