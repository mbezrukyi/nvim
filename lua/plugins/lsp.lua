return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x',
    priority = 1000,
    dependencies = { 
        'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        local lsp_attach = function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end

        lsp_zero.extend_lspconfig({
            sign_text = true,
            lsp_attach = lsp_attach,
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
        })
    end,
}
