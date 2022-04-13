local nvim_lsp = require('lspconfig')

local cmp = require('cmp')
cmp.setup {
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    },
    experimental = {
        ghost_text = true,
    }
}
