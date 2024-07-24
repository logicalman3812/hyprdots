return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "right",
        signcolumn = "no",
        preserve_window_proportions = false,
      },
      renderer = {
        group_empty = false,
        indent_width = 1,
        indent_markers = {
          enable = true,
          inline_arrows = false,
        },
      },
      actions = {
        open_file = {
          resize_window = false,
        },
      },
      filters = {
        dotfiles = false,
      },
    })
  end,
}


