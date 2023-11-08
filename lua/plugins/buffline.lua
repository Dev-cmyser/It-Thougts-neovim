require("bufferline").setup({
	options = {
		buffer_close_icon = "",
		mode = "buffers",
		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				separator = true,
				padding = 1,
			},
		},
		diagnostics = "nvim_lsp",
		indicator = {
			icon = "", -- this should be omitted if indicator style is not 'icon'
			style = "icon",
		},
		close_command = function(bufnum)
			-- Сохраните позицию курсора
			local cursor_pos = vim.api.nvim_win_get_cursor(0)
			-- Закройте буфер
			vim.cmd("bdelete! " .. bufnum)
			-- Восстановите позицию курсора в новом буфере
			vim.api.nvim_win_set_cursor(0, cursor_pos)
		end, -- separator_style = "slope"
	},
})
