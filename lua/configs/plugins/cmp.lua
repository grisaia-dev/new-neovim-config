return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            'onsails/lspkind.nvim'
        },
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                preselect = cmp.PreselectMode.None,
                window = {
                    completion = {
                        winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,Search:None',
                        col_offset = 3,
                        side_padding = 0,
                    },
                    documentation = cmp.config.window.bordered(),
                },
                formatting = {
                    fields = { 'kind', 'abbr', 'menu' },
                    format = function(entry, vim_item)
                        local kind = require('lspkind').cmp_format({ mode = 'symbol_text', maxwidth = 50, minwidth = 5})(entry, vim_item)
                        local strings = vim.split(kind.kind, '%s', {trimempty = true})
                        kind.kind = ' ' .. (strings[1] or '') .. ' '
                        --kind.abbr = ' ' .. (strings[3] or '') .. ' '
                        kind.menu = '[' .. (strings[2] or '') .. ']'
                        return kind
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<CR>'] = cmp.mapping.confirm({ select = false }),
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        else
                            fallback()
                        end
                    end, { 'i', 's' })
                }),
                sources = cmp.config.sources({
                    {name = 'nvim_lsp_signature_help'},
                    {name = 'nvim_lsp'}
                })
            })
        end,
    },
}
