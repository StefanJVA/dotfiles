-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

     -- Telescope (fuzzy finding)
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    -- Colorscheme
    use("gruvbox-community/gruvbox")

    -- Treesitter
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("romgrk/nvim-treesitter-context")

    -- Undo
    use("mbbill/undotree")


    -- LSP
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp") -- Completion engine cmp
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp")
    use("tzachar/cmp-tabnine", { run = "./install.sh" }) -- auto completion
    use("onsails/lspkind-nvim") -- vsc like pictogramm popup
    use("nvim-lua/lsp_extensions.nvim") -- inlay hints
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim") -- tree like view for variables

    -- Snippets?

    -- Debugging?
end)
