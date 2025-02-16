return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                'pylsp',
            },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({
                        capabilities = require('cmp_nvim_lsp').default_capabilities(),
                    })
                end
            }
        })

        local cmp = require('cmp')

        cmp.setup({
            sources = {
                {name = 'nvim_lsp'},
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
                ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),
                ['<CR>'] = cmp.mapping.confirm({select = false}),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
            }),
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body)
                end,
            },
        })
    end
}
