local wezterm = require 'wezterm';

local termcolor_fg = "#2b2b2b"
local termcolor_cursor_bg = "#b0b0b0"

return {
    font = wezterm.font("LiterationMonoNerdFontComplete-", {weight="Regular"}),
    font_size = 15,

    enable_tab_bar = true,
    use_fancy_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,
    tab_bar_at_bottom = false,

    -- window_background_image = "",
    window_background_opacity = 1.0,

    keys = {
        {key = "c", mods = "CMD", action = wezterm.action{CopyTo="Clipboard"}},
        {key = "v", mods = "CMD", action = wezterm.action{PasteFrom="Clipboard"}},
    },

    colors = {
        foreground = termcolor_fg,
        background = "#f0f0f0",
        cursor_bg = termcolor_cursor_bg,
        cursor_fg = termcolor_fg,

        selection_fg = termcolor_fg,
        selection_bg = termcolor_cursor_bg,

        split = "#444444",
    },

}
