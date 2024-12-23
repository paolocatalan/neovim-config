return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },

        config = function()
            local mason = require("mason")

            local mason_lspconfig = require("mason-lspconfig")

            mason.setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })

            mason_lspconfig.setup({
                -- list of servers for mason to install
                ensure_installed = {
                    "html",
                    "cssls",
                    "tailwindcss",
                    "lua_ls",
                    "emmet_language_server",
                    -- "phpactor",
                    -- "stimulus_ls",
                    "intelephense",
                },
                -- auto-install configured servers (with lspconfig)
                automatic_installation = true, -- not the same as ensure_installed
            })
        end
    },
}
