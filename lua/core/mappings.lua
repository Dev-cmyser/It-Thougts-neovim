vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")
vim.keymap.set("v", "<leader>/", ":CommentToggle<CR>")

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- Other
vim.keymap.set("n", "<s-J>", "")
vim.keymap.set("v", "<s-J>", "")
vim.keymap.set("n", "<leader>w", ":w<CR>")
-- свернуть все
vim.keymap.set("n", "<leader>1", ":set foldlevel=1<CR>")
vim.keymap.set("n", "<leader>2", ":set foldlevel=2<CR>")
vim.keymap.set("n", "<leader>3", ":set foldlevel=3<CR>")
vim.keymap.set("n", "<leader>4", ":set foldlevel=4<CR>")
vim.keymap.set("n", "<leader>5", ":set foldlevel=5<CR>")
vim.keymap.set("n", "<leader>6", ":set foldlevel=6<CR>")
vim.keymap.set("n", "<leader>7", ":set foldlevel=7<CR>")
vim.keymap.set("n", "<leader>8", ":set foldlevel=8<CR>")

vim.api.nvim_set_keymap("n", "<leader>c", ":lua _G.close_and_go_right()<CR>", { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>c', ':bd<CR>:bprev<CR>')
vim.keymap.set("n", "<leader>x", ":BufferLineSortByTabs<CR>:BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>X", ":BufferLinePickClose<CR>")
-- vim.keymap.set("n", "<leader>s", ":Neotree show reveal reveal_force_cwd<CR>")
vim.keymap.set("n", "<leader>s", ":Neotree show reveal <CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

vim.keymap.set("i", "<C-j>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true })

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>:Neotree show reveal <CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>:Neotree show reveal <CR>")

vim.keymap.set("n", "<s-H>", ":BufferLineCyclePrev<CR>:Neotree show reveal <CR>")
vim.keymap.set("n", "<s-L>", ":BufferLineCycleNext<CR>:Neotree show reveal <CR>")

-- Terminal
vim.keymap.set("n", "<F7>", ":ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>")
