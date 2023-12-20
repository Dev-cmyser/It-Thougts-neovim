local map = vim.keymap.set

-- Отключение клавиши '.'
map("n", ".", "<Nop>", { silent = true })

vim.g.mapleader = " "

-- Zen mode
map("n", "<leader>z", ":TZAtaraxis<CR>")
-- NeoTree
map("n", "<leader>e", ":Neotree float  reveal toggle<CR>")
map("n", "E", ":Neotree left toggle<CR>")
map("n", "<leader>o", ":Neotree float git_status<CR>")

-- Navigation
map("n", "<c-k>", ":wincmd k<CR>")
map("n", "<c-j>", ":wincmd j<CR>")
map("n", "<c-h>", ":wincmd h<CR>")
map("n", "<c-l>", ":wincmd l<CR>")
map("n", "<leader>/", ":CommentToggle<CR>")
map("v", "<leader>/", ":CommentToggle<CR>")

-- Splits
map("n", "|", ":vsplit<CR>")
map("n", "\\", ":split<CR>")

-- Other
map("n", "<leader>w", ":w<CR>")
map("i", "<leader>w", "<Esc>:w<CR>")

-- свернуть все
map("n", "<leader>1", ":set foldlevel=0<CR>")
map("n", "<leader>2", ":set foldlevel=1<CR>")
map("n", "<leader>3", ":set foldlevel=2<CR>")
map("n", "<leader>4", ":set foldlevel=3<CR>")
map("n", "<leader>5", ":set foldlevel=4<CR>")
map("n", "<leader>6", ":set foldlevel=5<CR>")
map("n", "<leader>7", ":set foldlevel=6<CR>")
map("n", "<leader>8", ":set foldlevel=7<CR>")

-- delete buffer
vim.api.nvim_set_keymap("n", "<leader>c", ":lua _G.close_and_go_right()<CR>", { noremap = true, silent = true })
map("n", "<leader>x", ":BufferLineSortByTabs<CR>:BufferLineCloseRight<CR>")
map("n", "<leader>X", ":BufferLinePickClose<CR>")

-- show file in three
map("n", "<leader>s", ":Neotree show reveal <CR>")

map("i", "jj", "<Esc>")
map("i", "j<leader>", "<Esc>")

map("n", "<leader>h", ":nohlsearch<CR>")

map("i", "<C-j>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true })

-- Change buffers you can add :Neotree show reveal <CR>  for Neotree left
map("n", "<Tab>", ":BufferLineCycleNext<CR>:Neotree show reveal <CR>")
map("n", "<s-Tab>", ":BufferLineCyclePrev<CR>:Neotree show reveal <CR>")

map("n", "<s-H>", ":BufferLineCyclePrev<CR>")
map("n", "<s-L>", ":BufferLineCycleNext<CR>")

-- Terminal
map("n", "<F7>", ":ToggleTerm direction=float<CR>")
map("n", "<leader>j", ":ToggleTerm direction=float<CR>")
map("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
map("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>")

-- В ванильном виме j/k переходят по реальным строкам (в смысле, номера которых показываются по set number),
-- а gj/gk по экранным (или отображаемым, не знаю, как правильно).
-- То есть, если все строки скажем, по 100 символов, а ширина окна/терминала 40,
-- то j/k будут прыгать, получается, на две или три экранные строки за раз,
-- а gj/gk -- по одной.
-- Есть популярное простое решение nnoremap j gj, которое заставляет j тоже ходить по экранным строкам (ну и для k аналогично)
-- но такое решение убивает полезность relativenumber,
-- потому что (при узком окне) движения вроде 3j будут перемещать курсор на несколько экранных строк, а не туда, куда показывает relative number.
-- А вот такой ремап с условным выражением проверяет, есть ли число перед j; если нет,
-- двигает курсор на одну экранную строку вниз, а если есть, на соответствующее число реальных строк.
map("n", "j", "v:count == 0 ? 'gj' : 'j'", {
	expr = true,
	desc = "Move cursor down (display and real line)",
})
map("n", "k", "v:count == 0 ? 'gk' : 'k'", {
	expr = true,
	desc = "Move cursor up (display and real line)",
})
-- Other
map("v", "<s-J>", "")
-- Fold
map("n", "<s-J>", ":foldopen<CR>")
map("n", "<s-K>", ":foldclose<CR>")
