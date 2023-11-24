local Keys = {
	{
		"s",
		mode = { "n", "x", "o" },
		function()
			require("flash").jump({
				search = {
					mode = function(str)
						return "\\<" .. str
					end,
				},
			})
		end,
		desc = "Flash",
	},
	{
		"S",
		mode = { "n", "o", "x" },
		function()
			require("flash").treesitter()
		end,
		desc = "Flash Treesitter",
	},
}
return Keys
