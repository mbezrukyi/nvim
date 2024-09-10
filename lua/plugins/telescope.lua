return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', function() builtin.find_files({hidden = true, no_ignore = true}) end, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', builtin.grep_string, {})
    end,
}
