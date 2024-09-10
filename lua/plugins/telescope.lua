return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        {"<leader>pf", require('telescope.builtin').find_files, desc = "Explore Files"},
        {"<C-p>", require('telescope.builtin').git_files, desc = "Explore Git Files"},
        {"<leader>ps", require('telescope.builtin').grep_string, desc = "Explore Files by String"},
    },
}
