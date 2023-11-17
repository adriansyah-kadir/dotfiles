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

function GrepAndOpen(...)
	--- @type table<string>
	local results = vim.fn.split(vim.fn.system("grep "..(...)), '\n')
	local new_buff = vim.api.nvim_create_buf(false, true)
	local function Open(mode)
		local line_selected = vim.fn.split(results[vim.fn.line('.')], ":")
		local filepath = line_selected[1]
		local linenr = line_selected[2]
		if vim.fn.filereadable(filepath) ~= 0 then
			vim.cmd(string.format("%s%s %s", mode, tonumber(linenr) ~= nil and " +"..linenr or "", filepath))
		else
			-- TODO: handle when file is not found
			vim.print("file not found")
		end
	end
	vim.api.nvim_buf_set_lines(new_buff, 0, -1, false, results)
	vim.api.nvim_buf_set_option(new_buff, "modifiable", false)
	vim.cmd.tabnew()
	vim.api.nvim_win_set_buf(0, new_buff)
	vim.keymap.set('n', '<cr>', function () Open('e') end, {buffer=vim.fn.bufnr()})
	vim.keymap.set('n', '<s-t>', function () Open('tabnew') end, {buffer=vim.fn.bufnr()});
	vim.cmd("match @error /^[^:]*\ze:/")
	vim.fn.matchadd("@keyword", "^[^:]*:")
	vim.fn.matchadd("@field", ":[0-9]*:")
end
