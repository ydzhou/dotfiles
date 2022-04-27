require'nvim-autopairs'.setup {}

require'nvim-tree'.setup {
    auto_reload_on_write = true,
    disable_netrw = true,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = false,
    open_on_tab = false,
    sort_by = "name",
    update_cwd = false,
    view = {
        width = 40,
        side = "left",
        number = false,
        relativenumber = false,
        mappings = {
            list = {
                {key = "t", action = "tabnew"},
                {key = "<Right>", action = "next_sibling"},
                {key = "<Left>", action = "prev_sibling"},
                {key = "<Space>", action = "cd"},
                {key = "N", action = "create"},
                {key = "m", action = "move"},
                {key = "y", action = "copy"},
                {key = "r", action = "rename"},
                {key = "R", action = "refresh"},
                {key = "D", action = "trash"},
                {key = "d", action = ""},
                {key = "-", action = "dir_up"},
            },
        },
    },
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
    },
    filters = {
        dotfiles = true,
        custom = {},
        exclude = {},
    },
    git = {
        enable = false,
        ignore = true,
        timeout = 400,
    },
    trash = {
        cmd = "rm",
        require_confirm = true,
    },
}
