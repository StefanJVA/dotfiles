return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    local term = require("harpoon.term")

    vim.keymap.set("n", "<leader>ha", mark.add_file)
    vim.keymap.set("n", "<leader>he", ui.toggle_quick_menu)

    vim.keymap.set("n", "<leader>hh", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<leader>hj", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<leader>hk", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<leader>hl", function() ui.nav_file(4) end)
    vim.keymap.set("n", "<leader>h;", function() ui.nav_file(5) end)

    vim.keymap.set("n", "<leader>hn", function() ui.nav_next() end)
    vim.keymap.set("n", "<leader>hp", function() ui.nav_prev() end)
  end,
}
