local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Copilot
	{ "github/copilot.vim" },
	-- Search by filename and by content
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	-- Zen mode to try :ZenMode
	{ "folke/zen-mode.nvim", lazy = false },

	-- Color schemes
	{ "rmehri01/onenord.nvim" },
	{ "joshdick/onedark.vim" },
	{ "rebelot/kanagawa.nvim" },
	{ "cooperuser/glowbeam.nvim" },

	-- Manager for  Installing plugins and lsp
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- LSP, cmp  and treesitter
	{ "nvim-treesitter/nvim-treesitter" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{
		"linrongbin16/lsp-progress.nvim",
		event = { "VimEnter" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lsp-progress").setup()
		end,
	},

	-- Lualine - line which show base information ( mode, git branch, etc. )
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"linrongbin16/lsp-progress.nvim",
		},
	},

	-- Blamer - show git sign anywhere
	{
		"APZelos/blamer.nvim",
		lazy = false,
		config = function()
			vim.g.blamer_delay = 900
			vim.g.blamer_show_in_insert_modes = 0
			vim.g.blamer_prefix = " > "
			vim.g.blamer_show_in_visual_modes = 0
			vim.g.blamer_enabled = 1
			-- vim.o.highlight Blamer g uifg="lightgrey"
		end,
	},

	-- Terminal float
	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	-- Formatter
	{ "jose-elias-alvarez/null-ls.nvim" },

	-- Coment code
	{ "terrortylor/nvim-comment" },

	-- Autotag for html
	{ "windwp/nvim-ts-autotag" },

	-- Tree for files
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},
	-- Buffers
	{ "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Codeium
	{
		"Exafunction/codeium.vim",
		lazy = false,
	},
	-- Dashboard
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},

	-- Three plugins for which-key and helper bar after space 300 mlsec
	{ "folke/which-key.nvim" },
	{ "hrsh7th/vim-vsnip" },
	{ "hrsh7th/vim-vsnip-integ" },

	-- Fast moving and v-mode
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		keys = function()
			return require("plugins.folke.keys")
		end,
	},
	--  Maybe after closind Nullls
	-- {
	-- 	"mhartington/formatter.nvim",
	-- 	event = "VeryLazy",
	-- 	opts = function()
	-- 		return require("plugins.formatter")
	-- 	end,
	-- },
	--
	-- Another prettier
	-- {"stevearc/conform.nvim",
	-- 	-- 	opts = function()
	-- 		return require("plugins.conform-formatter")
	-- 	end,
	-- },
})
