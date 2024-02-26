local wezterm = require("wezterm")

local colors = wezterm.color.load_scheme(wezterm.home_dir .. "/.theme/nightfox.nvim/extra/nordfox/wezterm.toml")

return {
	window_decorations = "RESIZE",
	font = wezterm.font("JetBrains Mono"),
	initial_cols = 160,
	initial_rows = 45,
	colors = colors,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
}
