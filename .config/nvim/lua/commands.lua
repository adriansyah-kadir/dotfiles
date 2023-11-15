vim.cmd("command! Config :e ~/.config/nvim")
vim.cmd("command! -nargs=? Jbs lua JoinBufSplit(<f-args>)")
vim.cmd("command! -nargs=? Jfs lua JoinFileSplit(<f-args>)")
