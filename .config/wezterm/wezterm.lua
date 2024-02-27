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

  keys = {
    {
      key = '"',
      mods = "SUPER|SHIFT",
      action = wezterm.action.SplitPane({
        direction = "Down",
        size = { Percent = 30 },
      }),
    },
    {
      key = "x",
      mods = "SUPER",
      action = wezterm.action.PaneSelect({}),
    },
    {
      key = "d",
      mods = "SUPER",
      action = wezterm.action.CloseCurrentPane({ confirm = false }),
    },
  },
}
