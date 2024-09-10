return {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
    },
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
