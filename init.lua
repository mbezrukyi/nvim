vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.guicursor = ''

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.signcolumn = 'yes'

vim.g.netrw_banner = 0

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', '"_dP')

vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')

local function github(repository)
    return 'https://github.com/' .. repository
end

vim.pack.add({
    github('folke/tokyonight.nvim'),
    github('nvim-lua/plenary.nvim'),
    { src = github('nvim-telescope/telescope.nvim'), version = vim.version.range('*') },
    github('mason-org/mason.nvim'),
    github('neovim/nvim-lspconfig'),
})

vim.cmd.colorscheme('tokyonight')

require('telescope').setup({
    defaults = {
        file_ignore_patterns = { '^%.git/' },
    },
    pickers = {
        find_files = { hidden = true },
        live_grep = { additional_args = { '--hidden' } },
    },
})

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', telescope.find_files)
vim.keymap.set('n', '<leader>ps', telescope.live_grep)

require('mason').setup()

vim.lsp.enable({ 'pylsp', 'rust_analyzer' })

vim.opt.autocomplete = true
vim.opt.complete = 'o'
vim.opt.completeopt = { 'menu', 'popup', 'noselect' }

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        vim.lsp.completion.enable(true, event.data.client_id, event.buf)

        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = event.buf })
        vim.keymap.set({ 'n', 'x' }, '<F3>', function()
            vim.lsp.buf.format({ async = true })
        end, { buffer = event.buf })
    end,
})
