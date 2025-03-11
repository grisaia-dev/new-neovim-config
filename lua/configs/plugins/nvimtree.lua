return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = { 
            'nvim-tree/nvim-web-devicons',
            'lewis6991/gitsigns.nvim',
        },
        opts = {
            disable_netrw = true,
	        hijack_netrw = true,
	        open_on_tab = false,
	        hijack_cursor = false,
	        update_cwd = true,
	        diagnostics = {
	        	enable = true,
	        	icons = {
	        		hint = "",
	        		info = "",
	        		warning = "",
	        		error = "",
	        	},
	        },
	        update_focused_file = {
	        	enable = true,
	        	update_cwd = true,
	        	ignore_list = {},
	        },
	        system_open = {
	        	cmd = nil,
	        	args = {},
	        },
	        filters = {
	        	dotfiles = false,
	        	custom = { ".git", ".DS_Store" },
	        	exclude = { ".gitignore", ".github" },
	        },
	        renderer = {
	        	icons = {
	        		git_placement = "after",
	        		padding = " ",
	        		glyphs = {
	        			default = "",
	        			symlink = "",
	        			folder = {
	        				arrow_closed = "",
	        				arrow_open = "",
	        				default = "",
	        				open = "",
	        				empty = "",
	        				empty_open = "",
	        				symlink = "",
	        				symlink_open = "",
	        			},
	        			git = {
	        				unstaged = "",
	        				staged = "",
	        				unmerged = "",
	        				renamed = "➜",
	        				untracked = "",
	        				deleted = "",
	        				ignored = "◌",
	        			},
	        		},
	        	},
	        },
	        view = {
	        	width = 30,
                adaptive_size = true,
	        	side = "left",
	        	number = false,
	        	relativenumber = false,
	        	float = {
	        		enable = true,
	        		quit_on_focus_loss = true,
	        		open_win_config = {
	        			relative = "editor",
	        			border = "rounded",
	        			width = 30,
	        			height = 40,
	        			row = 1,
	        			col = 1,
	        		},
	        	},
	        },
	        trash = {
	        	cmd = "trash",
	        	require_confirm = true,
	        },
	        actions = {
	        	open_file = {
	        		quit_on_open = false,
	        		window_picker = {
	        			enable = false,
	        		},
	        	},
	        },
        },
    }
}
