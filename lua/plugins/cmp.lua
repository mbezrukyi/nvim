return {
    'hrsh7th/nvim-cmp',
    opts = {
        sources = {
            {name = 'nvim_lsp'},
        },
        mapping = require('cmp').mapping.preset.insert({
            ['<C-p>'] = require('cmp').mapping.select_prev_item({behavior = 'select'}),
            ['<C-n>'] = require('cmp').mapping.select_next_item({behavior = 'select'}),
            ['<CR>'] = require('cmp').mapping.confirm({select = false}),
            ['<C-Space>'] = require('cmp').mapping.complete(),
            ['<C-u>'] = require('cmp').mapping.scroll_docs(-4),
            ['<C-d>'] = require('cmp').mapping.scroll_docs(4),
        }),
        snippet = {
            expand = function(args)
                vim.snippet.expand(args.body)
            end,
        },
    }
}
