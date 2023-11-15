function JoinBufSplit(mode)
	mode = mode or "sp"
	vim.cmd.buffers()
	local n_buf = vim.fn.input("Buffer No: ")
	if n_buf == '' then
		return nil
	end
	vim.cmd(mode)
	vim.cmd.wincmd(mode == 'sp' and 'j' or 'l')
	vim.cmd.buffer(n_buf)
end

function JoinFileSplit(mode)
	mode = mode or "sp"
	local fp = vim.fn.input("Filepath: ", "", "file")
	if fp == '' then
		return nil
	end
	vim.cmd(mode)
	vim.cmd.wincmd(mode == 'sp' and 'j' or 'l')
	vim.cmd.e(fp)
end
