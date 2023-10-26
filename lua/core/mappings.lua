vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>7', ':Neotree float reveal<CR>')
vim.keymap.set('n', '<leader>e', ':Neotree left reveal<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- Other
vim.keymap.set('n', '<leader>w', ':w<CR>')
--vim.keymap.set('n', '<leader>X', ':BufferLinePickClose<CR>')
 
vim.keymap.set('n', '<leader>c', ':bd<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLineSortByTabs<CR>:BufferLineCloseRight<CR>') 
vim.keymap.set('n', '<leader>s', ':Neotree show reveal reveal_force_cwd<CR>')
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')


-- vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>:Neotree show reveal reveal_force_cwd<CR>')
-- vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>:Neotree show reveal reveal_force_cwd<CR>')

vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>:Neotree show reveal reveal_force_cwd<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>:Neotree show reveal reveal_force_cwd<CR>')

vim.keymap.set('n', '<s-H>', ':BufferLineCyclePrev<CR>:Neotree show reveal reveal_force_cwd<CR>')
vim.keymap.set('n', '<s-L>', ':BufferLineCycleNext<CR>:Neotree show reveal reveal_force_cwd<CR>')

-- Terminal
vim.keymap.set('n', '<F7>', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')
