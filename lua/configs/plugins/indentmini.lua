return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            enabled = true,
            indent = {
                char = '┆',
                repeat_linebreak = false,
                --highlight = { 'Label' },
            },
            scope = {
                enabled = false,
                char = '┆',
                show_start = false,
                show_end = false,
            }
        },
    },
}
