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
            capabilities.textDocument.completion.completionItem.snippetSupport = true
            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = {
                    'clangd',
                    '--background-index',
                    '--log=error',
                    '--offset-encoding=utf-32',
                    '-j=12',
                    '--pch-storage=memory',
                    '--all-scopes-completion',
                    '--header-insertion=never',
                    --'--inlay-hints',
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
            --lspconfig.cmake.setup({
            --    capabilities = capabilities,
            --    cmd = {
            --        'cmake-language-server'
            --    },
            --    filetypes = { 'cmake' },
            --    single_file_support = true,
            --    root_pattern = lspconfig.util.root_pattern(
            --        'CMakePresets.json', 'CTestConfig.cmake', 'cmake'
            --    ),
            --    init_options = { buildDirectory = 'build' }
            --})
            lspconfig.neocmake.setup({
                capabilities = capabilities,
                cmd = { 'neocmakelsp', '--stdio' },
                filetypes = { 'cmake' },
                single_file_support = true,
                root_dir = lspconfig.util.root_pattern('build', 'cmake', '.git')
            })
            lspconfig.glsl_analyzer.setup({
                -- -- capabilities = capabilities,
                -- cmd = { 'glsl_analyzer' },
                -- filetypes = {'glsl', 'vert', 'tesc', 'tese', 'frag', 'geom', 'comp'},
                -- root_dir = lspconfig.util.root_pattern('.git', 'shaders'),
                -- single_file_support = true
            })
            lspconfig.omnisharp.setup({
                capabilities = capabilities,
                cmd = { 'OmniSharp' },
                filetypes = { 'cs', 'vb' },
                root_dir = lspconfig.util.root_pattern('*.sln', '*.csproj', 'omnisharp.json'),
                single_file_support = true,
                init_options = {}
            })
        end,
    },
}
