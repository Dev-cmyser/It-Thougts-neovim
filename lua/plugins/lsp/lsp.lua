vim.lsp.set_log_level("debug")
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
-- Setup language servers.
local lspconfig = require("lspconfig")
lspconfig.pyright.setup({})
lspconfig.tsserver.setup({
	filetypes = { "javascript", "typescript" },
	handlers = {
		["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			max_concurrent_servers = 1,
			max_memory = 8 * 1024 * 1024 * 1024,
		}),
	},
})
-- lspconfig.volar.setup({
-- 	init_options = {
-- 		typescript = {
-- 			-- tsdk = "/path/to/.npm/lib/node_modules/typescript/lib",
-- 			-- Alternative location if installed as root:
-- 			tsdk = "/home/cmyser/.nvm/versions/node/v20.9.0/lib/node_modules/typescript/lib",
-- 		},
-- 	},
-- })
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>lD", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-y>", vim.lsp.buf.signature_help, opts) -- vim.keymap
		--     .set('n', '<Leader>sa', vim.lsp.buf.add_workspace_folder, opts)
		-- vim.keymap.set('n', '<Leader>sr', vim.lsp.buf.remove_workspace_folder,
		--                opts)
		-- vim.keymap.set('n', '<Leader>sl', function()
		--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		-- end, opts)
		-- vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action, opts)
		-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<Leader>lf", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})

on_exit = function(_, code, _)
	if code ~= 0 then
		vim.cmd("q!")
	end
end
