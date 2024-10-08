return {
  "akinsho/bufferline.nvim",
  config = function()
    require("bufferline").setup {
      options = {
        diagnostics = "nvim_lsp",
        show_close_icon = false,
        show_buffer_close_icon = true,
        indicator = { style = "none" },
        separator_style = { "", "" },
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "center",
            highlight = "Directory",
            separator = false,
          },
        },
      },
    }
  end,
}
