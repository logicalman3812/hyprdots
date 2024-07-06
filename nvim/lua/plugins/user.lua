-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " ███▄    █ ▓█████ ▒█████   ██▒   █▓  ██  ███▄ ▄███▓",
        " ██ ▀█   █ ▓█   ▀▒██▒  ██▒▓██░   █▒▒▓██ ▓██▒▀█▀ ██▒",
        "▓██  ▀█ ██▒▒███  ▒██░  ██▒ ▓██  █▒░░▒██ ▓██    ▓██░",
        "▓██▒  ▐▌██▒▒▓█  ▄▒██   ██░  ▒██ █░░ ░██ ▒██    ▒██ ",
        "▒██░   ▓██░░▒████░ ████▓▒░   ▒▀█░   ░██▒▒██▒   ░██▒",
        "░ ▒░   ▒ ▒ ░░ ▒░ ░ ▒░▒░▒░    ░ ▐░   ░▓ ░░ ▒░   ░  ░",
        "░ ░░   ░ ▒░ ░ ░    ░ ▒ ▒░    ░ ░░    ▒ ░░  ░      ░",
        "░   ░ ░    ░  ░ ░ ░ ▒       ░░    ▒  ░      ░   ",
        "░    ░      ░ ░        ░    ░ ░       ░   ",
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  { "rebelot/kanagawa.nvim" },
  { 'uZer/pywal16.nvim',        as = 'pywal16' },
  { "luisiacc/gruvbox-baby" },
  { "AlphaTechnolog/pywal.nvim" },
  -- { "oncomouse/lushwal.nvim" },
  -- { 'morhetz/gruvbox' },
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000,
  --   config = true,
  --   opts = {
  --     italic = {
  --       strings = true,
  --       comments = true,
  --       folds = true,
  --       operations = false,
  --     }
  --   }
  -- },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
      })
    end
  },
  {
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup( --[[optional config]])
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup({})
    end
  },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip" (plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs" (plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
          -- don't add a pair if the next character is %
              :with_pair(cond.not_after_regex "%%")
          -- don't add a pair if  the previous character is xxx
              :with_pair(
                cond.not_before_regex("xxx", 3)
              )
          -- don't move right when repeat character
              :with_move(cond.none())
          -- don't delete if the next character is xx
              :with_del(cond.not_after_regex "xx")
          -- disable adding a newline when you press <cr>
              :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup {
        size = 20,
        open_mapping = [[<c-\>]], -- You can keep this default binding
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = '1',
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = 'horizontal', -- This ensures that terminals are opened horizontally by default
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = 'curved',
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          }
        }
      }
    end,
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
      })
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            '.git',
            '.DS_Store',
            'thumbs.db',
          },
          never_show = {},
        },
      },
      window = {
        position = "right",
      },
    },
  },
}
