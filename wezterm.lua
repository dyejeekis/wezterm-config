-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.default_prog = { 'pwsh.exe' }

config.window_decorations = 'RESIZE'
config.color_scheme = 'Batman'
config.window_background_opacity = 0.85

config.colors = {
	foreground = 'silver',
	background = 'black',
}

-- config.font = wezterm.font 'Fira Code'
config.font_size = 13.0

-- and finally, return the configuration to wezterm
return config
