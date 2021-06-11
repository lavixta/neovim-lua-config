-- Set local variables 
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
-- local g = vim.g      -- a table to access global variables
-- local o = vim.opt  -- to set options
local vim = vim
local execute = vim.api.nvim_command
require('global-val')
require('plugins')
require('lv-nvim-tree')
require('lv-nvim-comment')
require('lv-autopairs')
require("nvim-compe")
require('lv-treesitter')
require('lv-lsp-rooter')
--vim.cmd('luafile '..CONFIG_PATH..'/settings.lua')
require'lspinstall'.setup() -- important
--Config
vim.wo.number = true
vim.api.nvim_command('nnoremap <C-m> :NvimTreeToggle<CR>')
vim.wo.relativenumber = true
vim.o.title = true
vim.cmd('syntax on')
vim.o.mouse = "a"
vim.o.splitright = true
vim.o.splitbelow = true
vim.bo.smartindent = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 300
vim.o.clipboard = "unnamedplus"
vim.g.nvim_tree_disable_netrw = 1
vim.cmd('filetype plugin on')
vim.cmd('let g:vsnip_filetypes = {}')
vim.api.nvim_command("let g:vsnip_filetypes.javascriptreact = ['javascript']")
vim.api.nvim_command("let g:vsnip_filetypes.typescriptreact = ['typescript']")
vim.api.nvim_command("let g:vsnip_filetypes.javascript = ['javascriptreact']")
vim.api.nvim_command("let g:vsnip_filetypes.typescript = ['typescriptreact']")
--lspinstall
local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end
--     --LSP 
require('lsp')
require('lsp.python-ls')
require('lsp.go-ls')
require('lsp.css-ls')
require('lsp.dart-ls')
require('lsp.emmet-ls')
require('lsp.json-ls')
require('lsp.html-ls')
require('lsp.js-ts-ls')
require('lsp.tailwindcss-ls')
