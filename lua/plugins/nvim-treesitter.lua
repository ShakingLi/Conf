return {
    "p00f/nvim-ts-rainbow",
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { "vim", "bash", "c", "cpp", "python", "markdown", "lua" },
            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_line = nil,
            }
        }
    end
}
