return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
      width = 1, -- width of the Zen window
      height = 1, -- height of the Zen window
      options = {
        signcolumn = "no", -- disable signcolumn
        number = true, -- disable number column
        relativenumber = true, -- disable relative numbers
        cursorline = true, -- disable cursorline
        cursorcolumn = false, -- disable cursor column
        foldcolumn = "0", -- disable fold column
        list = true, -- disable whitespace characters
      },
    },
    plugins = {
      -- disable some global vim options (vim.o...)
      -- comment the lines to not apply the options
      options = {
        enabled = true,
        ruler = false, -- disables the ruler text in the cmd line area
        showcmd = false, -- disables the command in the last line of the screen
        -- you may turn on/off statusline in zen mode by setting 'laststatus' 
        -- statusline will be shown only if 'laststatus' == 3
        laststatus = 0, -- turn off the statusline in zen mode
      },
      twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
      gitsigns = { enabled = false }, -- disables git signs
      tmux = { enabled = true }, -- disables the tmux statusline
      todo = { enabled = false }, -- if set to "true", todo-comments.nvim highlights will be disabled
      -- this will change the font size on kitty when in zen mode
      -- to make this work, you need to set the following kitty options:
      -- - allow_remote_control socket-only
      -- - listen_on unix:/tmp/kitty
      kitty = {
        enabled = true,
        font = "+4", -- font size increment
      },
      neovide = {
        enabled = false,
        -- Will multiply the current scale factor by this number
        scale = 1.2,
        -- disable the Neovide animations while in Zen mode
        disable_animations = {
          neovide_animation_length = 0,
          neovide_cursor_animate_command_line = false,
          neovide_scroll_animation_length = 0,
          neovide_position_animation_length = 0,
          neovide_cursor_animation_length = 0,
          neovide_cursor_vfx_mode = "",
        }
      },
    },
    -- callback where you can add custom code when the Zen window opens
    on_open = function(win)
    end,
    -- callback where you can add custom code when the Zen window closes
    on_close = function()
    end,
  }
}
