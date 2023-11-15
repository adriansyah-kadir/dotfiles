vim.cmd[[
	augroup Folds
		autocmd!
		autocmd BufWinLeave * silent! mkview
		autocmd BufWinEnter * silent! loadview
	augroup END
]]
