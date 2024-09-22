local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("CaskaydiaCove Nerd Font")
config.font_size = 16.0

config.enable_tab_bar = false

config.window_decorations = "NONE"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

config.enable_scroll_bar = false

return config
