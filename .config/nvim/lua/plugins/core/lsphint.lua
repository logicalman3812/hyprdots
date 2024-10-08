return {
  {
    "chrisgrieser/nvim-lsp-endhints",
    event = "LspAttach",
    config = function()
      require("lsp-endhints").setup {
        icons = {
          type = "󰜁 ",
          parameter = "󰏪 ",
          offspec = " ", -- hint kind not defined in official LSP spec
          unknown = " ", -- hint kind is nil
        },
        label = {
          padding = 1,
          marginLeft = 0,
          bracketedParameters = true,
        },
        autoEnableHints = true,
      }
      require("lsp-endhints").enable()
    end,
  },
}
