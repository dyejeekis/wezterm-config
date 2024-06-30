local wezterm = require 'wezterm'

local config = wezterm.config_builder()

local is_win = wezterm.target_triple == 'x86_64-pc-windows-msvc'

-- default shell
if is_win then
	config.default_prog = { 'pwsh.exe' }
end

config.initial_cols = 120
config.initial_rows = 30

config.window_decorations = 'INTEGRATED_BUTTONS | RESIZE'
config.color_scheme = 'Batman'
config.window_background_opacity = 0.85
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}
config.enable_scroll_bar = false

config.colors = {
	foreground = 'silver',
	background = 'black',
}

-- config.font = wezterm.font 'Fira Code'
config.font_size = 13.0

return config
