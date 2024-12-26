return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            --"hrsh7th/nvim-cmp",
            --"hrsh7th/cmp-nvim-lsp-signature-help",
            --'onsails/lspkind.nvim'
        },
        config = function()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = {
                    'clangd',
                    '--background-index',
                    --'--pch-storage=memory',
                    '--all-scopes-completion',
                    '--header-insertion=never',
                    '--inlay-hints',
                    '--header-insertion-decorators',
                    '--function-arg-placeholders',
                    '--completion-style=detailed',
                },
                filetypes = { 'c', 'cpp', 'cxx' },
                single_file_support = true,
                root_dir = lspconfig.util.root_pattern(
                    'cmake',
                    'compile_commands.json'
                ),
            })
            lspconfig.cmake.setup({
                capabilities = capabilities,
                cmd = {
                    'cmake-language-server'
                },
                filetypes = { 'cmake' },
                single_file_support = true,
                root_pattern = lspconfig.util.root_pattern(
                    'CMakePresets.json', 'CTestConfig.cmake', 'cmake'
                ),
                init_options = { buildDirectory = 'build' }
            })
        end,
    },
}
