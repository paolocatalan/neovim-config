return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,

        config = function ()
            local bg_dark = "#1f2335"

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
                on_colors = function (colors)
                    colors.bg_float = bg_dark
                end,
            })
            vim.cmd[[colorscheme tokyonight]]
        end
    }
}
