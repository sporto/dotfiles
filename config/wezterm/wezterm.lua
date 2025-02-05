-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.window_background_opacity = 0.85
config.macos_window_background_blur = 30
config.window_decorations = "RESIZE"
config.color_scheme = 'Ayu Mirage'

config.font =
    wezterm.font('JetBrains Mono', {})

config.font_size = 16.0

-- keys
config.disable_default_key_bindings = true

local act = wezterm.action

config.keys = {
    { key = 'd', mods = 'CMD|SHIFT', action = wezterm.action.ShowDebugOverlay },
    {
        key = 'm',
        mods = 'CMD',
        action = act.DisableDefaultAssignment,
    },
    {
        key = 'v',
        mods = 'CMD',
        action = act.PasteFrom 'Clipboard'
    },
    {
        key = 'c',
        mods = 'CMD',
        action = act.CopyTo 'Clipboard'
    },
    -- Tabs
    {
        key = 't',
        mods = 'CMD',
        action = act.SpawnTab 'CurrentPaneDomain',
    },
    {
        key = 'o',
        mods = 'CMD',
        action = act.ActivateTabRelative(-1),
    },
    {
        key = 'p',
        mods = 'CMD',
        action = act.ActivateTabRelative(1),
    },
    {
        key = '1',
        mods = 'CMD',
        action = act.ActivateTab(0),
    },
    {
        key = '2',
        mods = 'CMD',
        action = act.ActivateTab(1),
    },
    {
        key = '3',
        mods = 'CMD',
        action = act.ActivateTab(2),
    },
    -- {
    --     key = 'w',
    --     mods = 'CMD',
    --     action = act.CloseCurrentTab { confirm = true },
    -- },
    -- Splits
    {
        key = 'LeftArrow',
        mods = 'CMD',
        action = act.SplitPane {
            direction = 'Left',
        },
    },
    {
        key = 'j',
        mods = 'CMD',
        action = act.SplitPane {
            direction = 'Left',
        },
    },
    {
        key = 'RightArrow',
        mods = 'CMD',
        action = act.SplitPane {
            direction = 'Right',
        },
    },
    {
        key = 'l',
        mods = 'CMD',
        action = act.SplitPane {
            direction = 'Right',
        },
    },
    {
        key = 'UpArrow',
        mods = 'CMD',
        action = act.SplitPane {
            direction = 'Up',
        },
    },
    {
        key = 'i',
        mods = 'CMD',
        action = act.SplitPane {
            direction = 'Up',
        },
    },
    {
        key = 'DownArrow',
        mods = 'CMD',
        action = act.SplitPane {
            direction = 'Down',
        },
    },
    {
        key = 'k',
        mods = 'CMD',
        action = act.SplitPane {
            direction = 'Down',
        },
    },
    -- Pane move
    -- {
    --     key = 'LeftArrow',
    --     mods = 'SHIFT',
    --     action = act.ActivatePaneDirection "Left",
    -- },
    -- {
    --     key = 'j',
    --     mods = 'SHIFT',
    --     action = act.ActivatePaneDirection "Left",
    -- },
    -- {
    --     key = 'RightArrow',
    --     mods = 'SHIFT',
    --     action = act.ActivatePaneDirection "Right",
    -- },
    -- {
    --     key = 'l',
    --     mods = 'SHIFT',
    --     action = act.ActivatePaneDirection "Right",
    -- },
    -- {
    --     key = 'UpArrow',
    --     mods = 'SHIFT',
    --     action = act.ActivatePaneDirection "Up",
    -- },
    -- {
    --     key = 'i',
    --     mods = 'SHIFT',
    --     action = act.ActivatePaneDirection "Up",
    -- },
    -- {
    --     key = 'DownArrow',
    --     mods = 'SHIFT',
    --     action = act.ActivatePaneDirection "Down",
    -- },
    -- {
    --     key = 'k',
    --     mods = 'SHIFT',
    --     action = act.ActivatePaneDirection "Down",
    -- },
    -- Panel resize
    {
        key = 'LeftArrow',
        mods = 'CMD|SHIFT',
        action = act.AdjustPaneSize { "Right", 1 },
    },
    {
        key = 'l',
        mods = 'CMD|SHIFT',
        action = act.AdjustPaneSize { "Right", 1 },
    },
    {
        key = 'RightArrow',
        mods = 'CMD|SHIFT',
        action = act.AdjustPaneSize { "Left", 1 },
    },
    {
        key = 'j',
        mods = 'CMD|SHIFT',
        action = act.AdjustPaneSize { "Left", 1 },
    },
    {
        key = 'UpArrow',
        mods = 'CMD|SHIFT',
        action = act.AdjustPaneSize { "Up", 1 },
    },
    {
        key = 'i',
        mods = 'CMD|SHIFT',
        action = act.AdjustPaneSize { "Up", 1 },
    },
    {
        key = 'DownArrow',
        mods = 'CMD|SHIFT',
        action = act.AdjustPaneSize { "Down", 1 },
    },
    {
        key = 'k',
        mods = 'CMD|SHIFT',
        action = act.AdjustPaneSize { "Down", 1 },
    },
}

return config
