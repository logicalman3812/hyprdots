return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      start_in_insert = true,
      shade_filetypes = {},
      shade_terminals = true,
      direction = "float",
      float_opts = {
        border = "curved",
      },
    })
  end,
}
