return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require("telescope")
    telescope.setup {
      defaults = {
        file_ignore_patterns = {
          "venv"
        },
      },
    }

    local keymap = vim.keymap
    local builtin = require('telescope.builtin')
    keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files" })
    keymap.set("n", "<leader>fF", ":Telescope find_files hidden=true<cr>", { desc = "Fuzzy find files (including hidden ones)" })
    keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Fuzzy find git files" })
    keymap.set('n', '<leader>fl', builtin.live_grep, { desc = "Live grep" })
    keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "Frep string" })
    keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Fuzzy find buffers" })
    keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Fuzzy find help tags" })
    keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "Fuzzy find diagnostics" })
  end,
}
