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
					vim.wo.relativenumber = true -- включить относительные номера строк после открытия Ataraxis
					vim.opt.number = true
				end,

				open_pos = function()
					ShowBufferline()
					vim.wo.relativenumber = true -- включить относительные номера строк после открытия Ataraxis
					vim.opt.number = true
				end,
				close_pre = function()
					ShowBufferline()
					vim.wo.relativenumber = true -- включить относительные номера строк после открытия Ataraxis
					vim.opt.number = true
				end,

				close_pos = function()
					vim.wo.relativenumber = true -- выключить относительные номера строк после закрытия Ataraxis
					vim.opt.number = true
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
