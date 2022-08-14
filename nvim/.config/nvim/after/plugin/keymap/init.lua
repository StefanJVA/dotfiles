local Remap = require("jva.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Netrw
nnoremap("<leader>e", ":Ex<CR>")

-- Undotree
nnoremap("<leader>u", ":UndotreeShow<CR>")

