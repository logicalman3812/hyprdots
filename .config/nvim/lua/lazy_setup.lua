require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    version = "^4",                -- Remove version tracking to elect for nighly AstroNvim
    import = "astronvim.plugins",
    opts = {                       -- AstroNvim options must be set here with the `import` key
      mapleader = " ",             -- This ensures the leader key must be configured before Lazy is set up
      maplocalleader = ",",        -- This ensures the localleader key must be configured before Lazy is set up
      icons_enabled = true,        -- Set to false to disable icons (if no Nerd Font is available)
      pin_plugins = nil,           -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
      update_notifications = true, -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
    },
  },

  -- { 'datsfilipe/vesper.nvim' },
  {
    'gambhirsharma/vesper.nvim',
    lazy = false,
    priority = 1000,
    name = "vesper",
    config = function()
      -- vim.cmd([[colorscheme vesper]])
    end
  },
  {
    'datsfilipe/min-theme.nvim',
    theme = 'dark',
    transparent = true,
    italics = {
      comments = true,
      keywords = true,
      functions = true,
      strings = true,
      variables = true,
    }
  },

  { import = "community" },
  { import = "plugins" },
} --[[@as LazySpec]], {
  -- Configure any other `lazy.nvim` configuration options here
  install = { colorscheme = { "pywal" } },
  ui = { backdrop = 100 },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
} --[[@as LazyConfig]])
