-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.window_background_opacity = 0.7
config.macos_window_background_blur = 30
config.window_decorations = "RESIZE"

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.font =
  wezterm.font('JetBrains Mono', {})
config.font_size = 16.0

-- and finally, return the configuration to wezterm
return config
