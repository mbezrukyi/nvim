local builtin = require("telescope.builtin")

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{"<leader>pf", builtin.find_files, desc = "Explore Files"},
		{"<C-p>", builtin.git_files, desc = "Explore Git Files"},
		{"<leader>ps", builtin.grep_string, desc = "Explore Files by String"},
	}
}
