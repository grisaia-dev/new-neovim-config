return { 
    {
        "olivercederborg/poimandres.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            local p = require('poimandres.palette')
            require('poimandres').setup({      
                bold_vert_split = false, -- use bold vertical separators
                dim_nc_background = true, -- dim 'non-current' window backgrounds
                disable_background = true, -- disable background
                disable_float_background = false, -- disable background for floats
                disable_italics = true, -- disable italics
                highlight_groups = {
                    -- normal
                    CursorLine = { bg = '#202235' },
                    EndOfBuffer = { fg = p.background2 },
                    FloatBorder = { fg = p.teal2 },
                    WinSeparator = {fg = p.teal3, bg = p.none },

                    -- Barbar fix background gitsings and lsp
                    BufferCurrentCHANGED = { fg = p.blue2, bg = p.background2 },
                    BufferCurrentADDED = { fg = p.teal1, bg = p.background2 },
                    BufferCurrentDELETED = { fg = p.pink3, bg = p.background2 },
                    BufferCurrentERROR = { fg = p.pink3, bg = p.background2 },
                    BufferCurrentHINT = { fg = p.blue2, bg = p.background2 },
                    BufferCurrentWARN = { fg = p.yellow, bg = p.background2 },
                    
                    -- BlankLine
                    IndentBlanklineContextChar = { fg = p.yellow },
                    IndentBlanklineContextStart = { fg = p.yellow },

                    -- C++
                    ['@lsp.type.operator.cpp'] = { link = '@keyword.operator' },
                    ['@comment.cpp'] = { fg = p.blueGray3 },
                    ['@keyword.import.cpp'] = { fg = p.blueGray2 },
                    ['@keyword.directive.define.cpp'] = { fg = p.blueGray2 },
                    ['@keyword.directive.cpp'] = { fg = p.blueGray2 },
                    ['@variable.parameter.cpp'] = { fg = p.blueGray2 },
                    ['@lsp.type.parameter.cpp'] = { fg = p.blueGray2 },
                    ['@constant.macro.cpp'] = { fg = p.teal2 },
                    ['@lsp.type.macro.cpp'] = { fg = p.teal2 },
                    ['@lsp.type.enumMember.cpp'] = { fg = p.teal2 },

                    -- CMP
                    CmpItemKindClass    = { fg = p.background2, bg = p.yellow },
                    CmpItemKindFunction = { fg = p.background2, bg = p.blue1 },
                    CmpItemKindInterface= { fg = p.background2, bg = p.blue2 },
                    CmpItemKindMethod   = { fg = p.background2, bg = p.pink3 },
                    CmpItemKindSnippet  = { fg = p.background2, bg = p.blueGray1 },
                    CmpItemKindVariable = { fg = p.background2, bg = p.teal1 },
                    
                },
            })
        end,
        init = function()
            vim.cmd("colorscheme poimandres")
        end
    }
}
