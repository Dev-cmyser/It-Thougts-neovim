require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "lua", "go", "tsx", "javascript", "vue", "css", "html",  "rust", "python" },
  ignore_install = {},

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
