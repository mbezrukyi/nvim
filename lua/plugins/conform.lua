return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            python = {
                'black',
            },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = 'fallback',
        },
        formatters = {
            black = {
                prepend_args = {
                    '--line-length',
                    '79',
                },
            },
        },
    },
}
