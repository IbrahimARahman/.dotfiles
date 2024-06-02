-- Move 1 more line up or down in normal mode
vim.api.nvim_set_keymap('n', 'K', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', ':m .+1<CR>==', { noremap = true, silent = true })

-- Move 1 more line up or down in visual mode
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
