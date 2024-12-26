return {
    {
        'm4xshen/autoclose.nvim',
        opts = {
            options = {
                pair_spaces = true,
                disable_when_touch = true,
                touch_regex = "[%w(%[{]",
                auto_indent = true,
            }
        },
    },
}
