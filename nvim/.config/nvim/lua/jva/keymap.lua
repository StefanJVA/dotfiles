vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>r", vim.lsp.buf.format)

-- move lines in Block Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- stay in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste and delete without losing current paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_dP")
vim.keymap.set("v", "<leader>d", "\"_dP")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- quick fix list
vim.keymap.set("n", "<leader>qj", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>qk", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>qh", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>ql", "<cmd>lprev<CR>zz")

-- resize window
vim.keymap.set("n", "<leader>=", [[<cmd>vertical resize +10<cr>]]) -- vertical bigger
vim.keymap.set("n", "<leader>-", [[<cmd>vertical resize -10<cr>]]) -- vertical smaller
vim.keymap.set("n", "<leader>+", [[<cmd>horizontal resize +10<cr>]]) -- horizontal bigger
vim.keymap.set("n", "<leader>_", [[<cmd>horizontal resize -10<cr>]]) -- horizontal smaller

-- move between windows
vim.keymap.set("n", "<Left>", "<C-w>h")
vim.keymap.set("n", "<Right>", "<C-w>l")
vim.keymap.set("n", "<Down>", "<C-w>j")
vim.keymap.set("n", "<Up>", "<C-w>k")

-- replace word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
