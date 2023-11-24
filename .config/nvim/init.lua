-- user
---@diagnostic disable: missing-fields
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('sets')
require('vars')
require('sources')
require("lazy").setup("plugins")
require('maps')
require('funcs')
require('commands')
require('autos')
require('lsp')

if vim.g.neovide then
	require("neovide")
end
