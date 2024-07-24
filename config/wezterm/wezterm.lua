-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.window_background_opacity = 0.85
config.macos_window_background_blur = 30
config.window_decorations = "RESIZE"

config.font =
    wezterm.font('JetBrains Mono', {})

config.font_size = 16.0

-- keys
config.disable_default_key_bindings = true

config.keys = {
    {
        key = 'm',
        mods = 'CMD',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = 'v',
        mods = 'CMD',
        action = wezterm.action.PasteFrom 'Clipboard'
    },
    {
        key = 'c',
        mods = 'CMD',
        action = wezterm.action.CopyTo 'Clipboard'
    },
    {
        key = 's',
        mods = 'CMD|SHIFT',
        action = wezterm.action.SplitPane {
            direction = 'Left',
        },
    },
    {
        key = 'a',
        mods = 'CMD|SHIFT',
        action = wezterm.action.SplitPane {
            direction = 'Down',
        },
    },
}

return config
