return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,

        config = function ()
            require("tokyonight").setup({
                style="night",
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    -- comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
            vim.cmd[[colorscheme tokyonight]]
        end
    }
}
