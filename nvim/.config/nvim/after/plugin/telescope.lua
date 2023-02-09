local setup, builtin = pcall(require, "telescope.builtin")
if not setup then
  return
end


local telescope = require('telescope')
telescope.setup {
    defaults = {
        file_ignore_patterns = {
            "venv"
        },
    },
}

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fF", ":Telescope find_files hidden=true<cr>")
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
