local plugins = {
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'gopls',
        'rust-analyzer',
        'typescript-language-server'
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    config = function ()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    ft = 'go',
    opts = function ()
      return require('custom.configs.null-ls')
    end,
  },
  {
    'jose-elias-alvarez/typescript.nvim',
    ft = 'typescript',
  },
  {
    'mfussenegger/nvim-dap',
    init = function ()
      require('core.utils').load_mappings('dap')
    end
  },
  {
    'leoluz/nvim-dap-go',
    ft = 'go',
    dependencies = 'mfussenegger/nvim-dap',
    config = function (_, opts)
      require('dap-go').setup(opts)
      require('core.utils').load_mappings('dap-go')
    end
  },
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function ()
     vim.g.rustfmt_autosave = 1
    end
  },
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },
  {
    'tpope/vim-fugitive',
    lazy = false
  }
}

return plugins

