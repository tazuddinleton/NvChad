local plugins = {
    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed = {
                'gopls', 'rust-analyzer', 'typescript-language-server',
                'clangd', 'eslint_d'
            }
        }
    }, {
        'neovim/nvim-lspconfig',
        config = function()
            require 'plugins.configs.lspconfig'
            require 'custom.configs.lspconfig'
        end
    }, {
        'jose-elias-alvarez/null-ls.nvim',
        ft = {'go', 'lua', 'cpp', 'c'},
        lazy = false,
        opts = function() return require('custom.configs.null-ls') end
    }, {'jose-elias-alvarez/typescript.nvim', ft = 'typescript'}, {
        'mfussenegger/nvim-dap',
        init = function() require('core.utils').load_mappings('dap') end
    }, {
        'leoluz/nvim-dap-go',
        ft = 'go',
        dependencies = 'mfussenegger/nvim-dap',
        config = function(_, opts)
            require('dap-go').setup(opts)
            require('core.utils').load_mappings('dap-go')
        end
    }, {
        'rust-lang/rust.vim',
        ft = 'rust',
        init = function() vim.g.rustfmt_autosave = 1 end
    }, {'christoomey/vim-tmux-navigator', lazy = false},
    {'tpope/vim-fugitive', lazy = false}, {
        "NvChad/nvterm",
        config = function()
            require("nvterm").setup({
                terminals = {
                    type_opts = {
                        float = {
                            relative = 'editor',
                            row = 0.15,
                            col = 0.15,
                            width = 0.7,
                            height = 0.7,
                            border = "single"
                        },
                        horizontal = {location = "rightbelow", split_ratio = .3},
                        vertical = {location = "rightbelow", split_ratio = .5}
                    }
                }
            })
        end
    }
}

return plugins
