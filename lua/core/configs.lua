vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 40

-- vim.opt.wrap = true -- Включить перенос строк, игнорируя целостность слов
vim.opt.linebreak = true -- Включить перенос строк, сохраняя целостность слов
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"
vim.opt.swapfile = false

-- Вы можете также установить уровень сворачивания, например 'foldlevel'
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel = 99

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true
vim.opt.mousehide = true -- Спрятать курсор мыши когда набираем текст

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true
-- Clipboard
vim.opt.clipboard = "unnamedplus"
vim.api.nvim_set_keymap("x", "p", '"_dP', { noremap = true, silent = true })
-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.textwidth = 80

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])
