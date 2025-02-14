local wezterm = require("wezterm")

local config = wezterm.config_builder()

--config.font = wezterm.font("Meslo LGM Nerd Font")
config.font_size = 11.5

config.color_scheme = 'Black Metal (base16)'

config.window_decorations = 'NONE'
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 0,
    right = 2,
    top = 0,
    bottom = 0,
}

config.background = {
    {
        source = {
            Color = "black"
        },
        width = "100%",
        height = "100%",
        opacity = 0.80
    },
    --    {
    --       source = {
    --           File = "Pictures/sacredgeometry2.jpg"
    --       },
    --       width = "100%",
    --       height = "100%",
    --       opacity = 0.15,
    --   },
}

config.keys = {
    {
        key = 't',
        mods = 'CTRL',
        action = wezterm.action.SpawnTab 'CurrentPaneDomain',
    },
}

return config
