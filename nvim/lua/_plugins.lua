local autopair = require('nvim-autopairs')
autopair.setup {}

local ntree = require('nvim-tree')
ntree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    view = {
      number = true,
      relativenumber = true,
    },
    filters = {
      custom = { ".git" },
    },
}

require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    sync_install = false,
    ignore_install = {"javascript"},
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
}

require'nvim-tree'.setup {
    disable_netrw = true,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = false,
    sort_by = "name",
    git = {
        enable = false,
    },
    view = {
        width = 40,
        side = "left",
        number = false,
        relativenumber = false,
    },
}
