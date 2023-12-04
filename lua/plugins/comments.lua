require("nvim_comment").setup({
	-- line_mapping = "<leader>/",
	-- operator_mapping = "<leader>/"
	hook = function()
		if vim.api.nvim_buf_get_option(0, "filetype") == "vue" then
			vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
		end
	end,
})
