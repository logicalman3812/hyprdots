require("lualine").setup({
  options = {
    theme = "pywal",
    globalstatus = true,
    section_separators = "",
    component_separators = "",
    disabled_filetypes = { "alpha" },
    colors = {
          bg = none,
          fg = none,
        },
  },
  sections = {
    lualine_a = {
      {
        "mode",
        icon = "",
      }
    },
    lualine_b = {
      {
        "branch",
        icon = "󰘬",
        color = {
          fg = require("lualine.themes.pywal").normal.a.fg,
          bg = require("lualine.themes.pywal").replace.a.bg
        }
      },
    },
    lualine_c = {
      {
        "diff",
        separator = "|",
        color = { fg = require("lualine.themes.pywal").normal.a.bg },
        symbols = {
          added = " ",
          modified = " ",
          removed = " ",
        }
      },
      {
        "diagnostics",
        separator = "|",
        color = { fg = require("lualine.themes.pywal").normal.b.bg },
        padding = { left = 1, right = 1 },
        update_in_insert = true,
        symbols = {
          error = " ",
          warn = " ",
          info = " ",
          hint = " "
        },
      },
      {
        "filetype",
        padding = { left = 1 }
      }
    },
    lualine_x = {
      {
        "encoding",
        icon = "󱁻",
      }
    },
    lualine_y = {
      {
        "location",
        icon = "",
        color = {
          fg = require("lualine.themes.pywal").normal.a.fg,
          bg = require("lualine.themes.pywal").replace.a.bg
        }
      }
    },
    lualine_z = { { "progress" } },
  },
  extensions = {
    "lazy",
    "mason",
    "nvim-tree",
    "nvim-dap-ui",
    "toggleterm",
  },
})

