return {
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            animation = false,
            auto_hide = false,
            tabpages = true,
            clickable = true,
            focus_on_close = 'right',
            hide = {extensions = true, inactive = false},
            highlight_alternate = false,
            highlight_inactive_file_icons = false,
            highlight_visible = true,
            icons = {
                buffer_index = false,
                buffer_number = false,
                button = '×', -- 
                diagnostics = {
                    [vim.diagnostic.severity.ERROR] = {enabled = true},
                    [vim.diagnostic.severity.WARN] = {enabled = true},
                    [vim.diagnostic.severity.INFO] = {enabled = true},
                    [vim.diagnostic.severity.HINT] = {enabled = false},
                },
                gitsigns = {
                    added = {enabled = true, icon = '+'},
                    changed = {enabled = true, icon = '~'},
                    deleted = {enabled = true, icon = '-'},
                },
                filetype = {
                    custom_colors = false,
                    enabled = true,
                },
                separator = {left = '▎', right = ''},
                separator_at_end = true,
                modified = {button = '●'},
                pinned = {button = '', filename = true},
                -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
                preset = 'default',
                -- alternate = {filetype = {enabled = false}},
                -- current = {buffer_index = false},
                inactive = {button = '×'},
                -- visible = {modified = {buffer_number = false}},
            },
            insert_at_end = true,
            insert_at_start = false,
        },
    },
}
