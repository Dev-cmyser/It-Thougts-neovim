require("bufferline").setup({
	options = {
		buffer_close_icon = "",
		-- buffer_close_icon = "󰅙",
		mode = "buffers",
		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				separator = true,
				padding = 5,
			},
		},
		diagnostics = "nvim_lsp",
		indicator = {
			-- icon = "", -- this should be omitted if indicator style is not 'icon'
			-- icon = "", -- this should be omitted if indicator style is not 'icon'
			style = "icon",
			-- padding = { left = 0, right = 0, top = 0, bottom = 0 },
		},
	},
})
