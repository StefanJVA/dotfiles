local builtin = require("telescope.builtin")

local telescope = require('telescope')
telescope.setup {
    defaults = {
        file_ignore_patterns = {
            "miniconda3", "venv"
        },
    },
    pickers = {
        find_files = {
            hidden = true
        }
    }
}

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
