
return {

    -- ======================================
    -- Dark theme inspired by modern editors
    -- ======================================
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
},
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,

        config = function()
            require("catppuccin").setup({
                flavour = "mocha",

                transparent_background = false,

                integrations = {
                    nvimtree = true,
                    treesitter = true,
                    lualine = true,
                },
            })

            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },

    -- ======================================
    -- Directory explorer
    -- ======================================

    {
        "nvim-tree/nvim-tree.lua",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            require("nvim-tree").setup({
                view = {
                    width = 35,
                    side = "left",
                },

                renderer = {
                    group_empty = true,
                    highlight_git = true,
                },

                filters = {
                    dotfiles = false,
                },

                git = {
                    enable = true,
                },

                actions = {
                    open_file = {
                        quit_on_open = false,
                    },
                },
            })
        end,
    },

    -- ======================================
    -- Status line
    -- ======================================

    {
        "nvim-lualine/lualine.nvim",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    globalstatus = true,
                    section_separators = {
                        left = "",
                        right = "",
                    },
                    component_separators = {
                        left = "|",
                        right = "|",
                    },
                },

                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch" },
                    lualine_c = { "filename" },
                    lualine_x = {
                        "filetype",
                        "encoding",
                    },
                    lualine_y = {
                        "progress",
                    },
                    lualine_z = {
                        "location",
                    },
                },
            })
        end,
    },

}
