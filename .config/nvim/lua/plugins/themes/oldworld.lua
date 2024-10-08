return {
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("oldworld").setup({
        styles = {
          comments = { italic = true, bold = true },
          booleans = { italic = true, bold = true },
          functions = { italic = true, bold = true },
          identifiers = { italic = true, bold = true },
          keywords = { italic = true, bold = true },
          variables = { italic = true, bold = true },
        },
        highlight_overrides = {
          Normal = { bg = "NONE" },
          NormalFloat = { bg = "NONE" },
          Terminal = { bg = "NONE" },
        },
        integrations = {
          alpha = true,
          cmp = true,
          flash = true,
          gitsigns = true,
          hop = false,
          indent_blankline = true,
          lazy = true,
          lsp = true,
          markdown = true,
          mason = true,
          navic = false,
          neo_tree = false,
          neorg = false,
          noice = true,
          notify = true,
          rainbow_delimiters = true,
          telescope = true,
          treesitter = true,
        },
      })
    end,
  },
}
