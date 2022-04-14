local saga = require('lspsaga')

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = false,
    update_in_insert = false, 
})

local diag_signs = {
    Error = '🧨',
    Warn = '⚠️',
    Info = '💬',
    Hint = '💡',
}
for type, icon in pairs(diag_signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

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

nvim_lsp.clangd.setup {
    filetypes = {'c', 'cpp', 'h', 'hpp'},
}
