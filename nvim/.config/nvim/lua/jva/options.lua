-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- indent
vim.opt.smartindent = true

--wrap
vim.opt.wrap = false

-- undo backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true -- search for uppercase also

-- colors and background
vim.opt.termguicolors = true
vim.opt.background = "dark" -- choose dark by default for new color shemes

-- scrolloff
vim.opt.scrolloff = 8

-- animation speed
vim.opt.updatetime = 50

-- window splits
vim.opt.splitright = true
