return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', function() 
            builtin.find_files({
                hidden = true,
                no_ignore = true
            })
        end, {})
        vim.keymap.set('n', '<leader>ps', function () 
            builtin.grep_string({
                search = vim.fn.input('Grep > '),
                additional_args = {
                    '--hidden',
                    '--no-ignore',
                },
            }) 
        end, {})
    end,
}
