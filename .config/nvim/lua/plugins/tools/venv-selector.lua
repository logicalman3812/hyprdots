return {
  'linux-cultist/venv-selector.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require("venv-selector").setup({
      auto_activate = true,
      name = ".venv",
      stay_on_this_version = true,
    })
  end
}
