return {
    {
        '0xstepit/flow.nvim',
        lazy = false,
        priority = 1000,
        opts = {
            theme = {
                style = 'dark',
                contrast = 'default',
                transparent = true,
            },
            color = {
                mode = 'default',
                fluo = 'pink',
            },
            ui = {
                borders = 'inverse',
                aggressive_spell = false,
            },
        },
        config = function(_, opts)
            require('flow').setup(opts)
        end
    },
}
