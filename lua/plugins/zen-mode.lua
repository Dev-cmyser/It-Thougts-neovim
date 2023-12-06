local function ShowBufferline()
	vim.o.showtabline = 2
end
require("true-zen").setup({
	modes = { -- configurations per mode
		ataraxis = {
			shade = "dark", -- if `dark` then dim the padding windows, otherwise if it's `light` it'll brighten said windows
			backdrop = 0, -- percentage by which padding windows should be dimmed/brightened. Must be a number between 0 and 1. Set to 0 to keep the same background color
			minimum_writing_area = { -- minimum size of main window
				width = 70,
				height = 44,
			},
			quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
			padding = { -- padding windows
				left = 52,
				right = 52,
				top = 0,
				bottom = 0,
			},
			callbacks = {
				open_pre = function()
					ShowBufferline()
					vim.g.did_load_filetypes = 1
					vim.g.formatoptions = "qrn1"
					vim.opt.showmode = false
					vim.opt.updatetime = 100
					vim.wo.signcolumn = "yes"
					vim.opt.scrolloff = 20

					-- vim.opt.cmdheight = 0 -- ОТключить полосу внизу где символ и строка
					vim.opt.wrap = true -- Включить перенос строк, игнорируя целостность слов
					-- vim.opt.linebreak = true -- Включить перенос строк, сохраняя целостность слов
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
					vim.opt.shiftwidth = 4
					vim.opt.tabstop = 4
					vim.opt.softtabstop = 4
					vim.opt.smartindent = true
					vim.opt.textwidth = 80

					vim.cmd([[highlight clear LineNr]])
					vim.cmd([[highlight clear SignColumn]])
				end,

				open_pos = function()
					ShowBufferline()
					vim.g.did_load_filetypes = 1
					vim.g.formatoptions = "qrn1"
					vim.opt.showmode = false
					vim.opt.updatetime = 100
					vim.wo.signcolumn = "yes"
					vim.opt.scrolloff = 20

					-- vim.opt.cmdheight = 0 -- ОТключить полосу внизу где символ и строка
					vim.opt.wrap = true -- Включить перенос строк, игнорируя целостность слов
					-- vim.opt.linebreak = true -- Включить перенос строк, сохраняя целостность слов
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
					vim.opt.shiftwidth = 4
					vim.opt.tabstop = 4
					vim.opt.softtabstop = 4
					vim.opt.smartindent = true
					vim.opt.textwidth = 80

					vim.cmd([[highlight clear LineNr]])
					vim.cmd([[highlight clear SignColumn]])
				end,
				close_pre = function()
					ShowBufferline()
					vim.g.did_load_filetypes = 1
					vim.g.formatoptions = "qrn1"
					vim.opt.showmode = false
					vim.opt.updatetime = 100
					vim.wo.signcolumn = "yes"
					vim.opt.scrolloff = 20

					-- vim.opt.cmdheight = 0 -- ОТключить полосу внизу где символ и строка
					vim.opt.wrap = true -- Включить перенос строк, игнорируя целостность слов
					-- vim.opt.linebreak = true -- Включить перенос строк, сохраняя целостность слов
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
					vim.opt.shiftwidth = 4
					vim.opt.tabstop = 4
					vim.opt.softtabstop = 4
					vim.opt.smartindent = true
					vim.opt.textwidth = 80

					vim.cmd([[highlight clear LineNr]])
					vim.cmd([[highlight clear SignColumn]])
				end,

				close_pos = function()
					vim.g.did_load_filetypes = 1
					vim.g.formatoptions = "qrn1"
					vim.opt.showmode = false
					vim.opt.updatetime = 100
					vim.wo.signcolumn = "yes"
					vim.opt.scrolloff = 20

					-- vim.opt.cmdheight = 0 -- ОТключить полосу внизу где символ и строка
					vim.opt.wrap = true -- Включить перенос строк, игнорируя целостность слов
					-- vim.opt.linebreak = true -- Включить перенос строк, сохраняя целостность слов
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
					vim.opt.shiftwidth = 4
					vim.opt.tabstop = 4
					vim.opt.softtabstop = 4
					vim.opt.smartindent = true
					vim.opt.textwidth = 80

					vim.cmd([[highlight clear LineNr]])
					vim.cmd([[highlight clear SignColumn]])
				end,
			},
		},
	},
	integrations = {
		tmux = true, -- hide tmux status bar in (minimalist, ataraxis)
		kitty = { -- increment font size in Kitty. Note: you must set `allow_remote_control socket-only` and `listen_on unix:/tmp/kitty` in your personal config (ataraxis)
			enabled = false,
			font = "+3",
		},
		twilight = false, -- enable twilight (ataraxis)
		lualine = true, -- hide nvim-lualine (ataraxis)
		-- bufferline = true,
	},
})
