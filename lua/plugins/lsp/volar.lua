local lspconfig = require("lspconfig")
local lspconfig_configs = require("lspconfig.configs")
local lspconfig_util = require("lspconfig.util")

local volar_cmd = { "vue-language-server", "--stdio" }
local volar_root_dir = lspconfig_util.root_pattern("package.json")

lspconfig_configs.volar_api = {
	default_config = {
		cmd = volar_cmd,
		root_dir = volar_root_dir,
		-- on_new_config = on_new_config,
		filetypes = { "vue" },
		-- If you want to use Volar's Take Over Mode (if you know, you know)
		--filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
		init_options = {
			typescript = {
				tsdk = "/home/cmyser/.nvm/versions/node/v20.9.0/lib/node_modules/typescript/lib",
			},
			languageFeatures = {
				implementation = true, -- new in @volar/vue-language-server v0.33
				references = true,
				definition = true,
				typeDefinition = true,
				callHierarchy = true,
				hover = true,
				rename = true,
				renameFileRefactoring = true,
				signatureHelp = true,
				codeAction = true,
				workspaceSymbol = true,
				completion = {
					defaultTagNameCase = "both",
					defaultAttrNameCase = "kebabCase",
					getDocumentNameCasesRequest = false,
					getDocumentSelectionRequest = false,
				},
			},
		},
	},
}
lspconfig.volar_api.setup({})

lspconfig_configs.volar_doc = {
	default_config = {
		cmd = volar_cmd,
		root_dir = volar_root_dir,
		-- on_new_config = on_new_config,

		filetypes = { "vue" },
		-- If you want to use Volar's Take Over Mode (if you know, you know):
		--filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
		init_options = {
			typescript = {
				tsdk = "/home/cmyser/.nvm/versions/node/v20.9.0/lib/node_modules/typescript/lib",
			},
			languageFeatures = {
				implementation = true, -- new in @volar/vue-language-server v0.33
				documentHighlight = true,
				documentLink = true,
				codeLens = { showReferencesNotification = true },
				-- not supported - https://github.com/neovim/neovim/pull/15723
				semanticTokens = false,
				diagnostics = true,
				schemaRequestService = true,
			},
		},
	},
}
lspconfig.volar_doc.setup({})

lspconfig_configs.volar_html = {
	default_config = {
		cmd = volar_cmd,
		root_dir = volar_root_dir,
		-- on_new_config = on_new_config,

		filetypes = { "vue" },
		-- If you want to use Volar's Take Over Mode (if you know, you know), intentionally no 'json':
		--filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
		init_options = {
			typescript = {
				tsdk = "/home/cmyser/.nvm/versions/node/v20.9.0/lib/node_modules/typescript/lib",
			},
			documentFeatures = {
				selectionRange = true,
				foldingRange = true,
				linkedEditingRange = true,
				documentSymbol = true,
				-- not supported - https://github.com/neovim/neovim/pull/13654
				documentColor = false,
				documentFormatting = {
					defaultPrintWidth = 100,
				},
			},
		},
	},
}
lspconfig.volar_html.setup({})
