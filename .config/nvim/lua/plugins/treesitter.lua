require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "python", "typescript", "javascript", "lua"
  },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
