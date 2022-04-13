local nvim_lsp = require('lspconfig')

nvim_lsp.gopls.setup{
    cmd = {'gopls'},
    on_atach = on_attach,
    filetypes = {"go", "gomod"},
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}

-- nvim_lsp.ccls.setup {
--     filetypes = { 'c', 'cpp', 'h', 'cc', 'hpp'},
--     init_options = {
--         compilationDatabaseDirectory = "build",
--         index = {
--             threads = 0,
--         },
--         clang = {
--             excludeArgs = { "-frounding-math"},
--         },
--     }
-- }

require'lspconfig'.clangd.setup {
    filetypes = {'c', 'cpp', 'h', 'hpp'},
}
