return {
    'williamboman/mason-lspconfig.nvim',
    opts = {
        ensure_installed = {
            'pylsp',
        },
        handlers = {
            function(server_name)
                require('lspconfig')[server_name].setup({})
            end,
        },
    },
}
