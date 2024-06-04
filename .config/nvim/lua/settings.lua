vim.opt.guicursor = ""
vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Create the augroup 'setIndent' and clear it if it already exists
local setIndentGroup = vim.api.nvim_create_augroup('setIndent', { clear = true })

-- Create the autocmd for setting indent options
vim.api.nvim_create_autocmd('FileType', {
  group = setIndentGroup,
  pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript', 'yaml', 'lua', 'jsx', 'tsx', 'typescriptreact', 'javascriptreact' },
  command = 'setlocal shiftwidth=2 tabstop=2 softtabstop=2'
})

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.env.HOME  .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
