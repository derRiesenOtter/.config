local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_rows = 42
config.initial_cols = 130
config.color_scheme = "X::DotShare (terminal.sexy)"
config.font = wezterm.font("MesloLGS NF")
config.enable_tab_bar = false
config.font_size = 12
config.window_decorations = "RESIZE"
config.send_composed_key_when_left_alt_is_pressed = true

return config
