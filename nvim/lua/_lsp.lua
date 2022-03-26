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
