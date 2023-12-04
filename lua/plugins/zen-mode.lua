require("zen-mode").setup({
	plugins = {
		-- Добавьте здесь конфигурации для скрытия Bufferline и Neotree
		tmux = { enabled = false },
		neotree = { enabled = false, show_on_dirs = true },
		bufferline = { enabled = false },
	},
	on_open = function()
		-- vim.cmd("BufferlineToggle") -- Включить Bufferline, если он скрыт
		vim.cmd("Neotree toggle") -- Включить Neotree, если он скрыт
	end,
	on_close = function()
		-- vim.cmd("BufferlineToggle") -- Выключить Bufferline, если он видим
		vim.cmd("Neotree toggle") -- Выключить Neotree, если он видим
	end,
})
