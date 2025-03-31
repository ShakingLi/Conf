return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        build = ":MasonUpdate",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason").setup({
                ensure_installed = {
                    "lua-language-server",
                    "markdown-oxide",
                    "pyright",
                    "vim-language-server"
                },
                automatic_installation = true
            })
        end
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        enabled = true,
        dependencies = {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
        config = function()
            require("cmp").setup({
                sources = {
                    { name = 'nvim-lsp'}
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = true,
        dependencies = {
            "mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp"
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    lspconfig[server_name].setup({
                        capabilities = capabilities
                    })
                end,
            })
        end
    }
}
