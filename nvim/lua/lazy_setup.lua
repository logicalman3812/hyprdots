require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
<<<<<<< HEAD
    version = "^4", -- Remove version tracking to elect for nighly AstroNvim
    import = "astronvim.plugins",
    opts = { -- AstroNvim options must be set here with the `import` key
      mapleader = " ", -- This ensures the leader key must be configured before Lazy is set up
      maplocalleader = ",", -- This ensures the localleader key must be configured before Lazy is set up
      icons_enabled = true, -- Set to false to disable icons (if no Nerd Font is available)
      pin_plugins = nil, -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
=======
    version = "^4",                -- Remove version tracking to elect for nighly AstroNvim
    import = "astronvim.plugins",
    opts = {                       -- AstroNvim options must be set here with the `import` key
      mapleader = " ",             -- This ensures the leader key must be configured before Lazy is set up
      maplocalleader = ",",        -- This ensures the localleader key must be configured before Lazy is set up
      icons_enabled = true,        -- Set to false to disable icons (if no Nerd Font is available)
      pin_plugins = nil,           -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
>>>>>>> 5c19f97 (improved config files)
      update_notifications = true, -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
    },
  },

<<<<<<< HEAD
-- { 'datsfilipe/vesper.nvim' },
{
=======
  -- { 'datsfilipe/vesper.nvim' },
  {
>>>>>>> 5c19f97 (improved config files)
    'gambhirsharma/vesper.nvim',
    lazy = false,
    priority = 1000,
    name = "vesper",
<<<<<<< HEAD
    config = function ()
    -- vim.cmd([[colorscheme vesper]])
    end
  },
{
=======
    config = function()
      -- vim.cmd([[colorscheme vesper]])
    end
  },
  {
>>>>>>> 5c19f97 (improved config files)
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
<<<<<<< HEAD
  install = { colorscheme = { "pywal16" } },
=======
  install = { colorscheme = { "pywal" } },
>>>>>>> 5c19f97 (improved config files)
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
