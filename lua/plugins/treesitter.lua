return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate', -- Ensures Treesitter parsers stay updated
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'lua',
        'javascript',
        'typescript',
        'go',
        'python',
        'json',
        'yaml',
        'rust',
        'jinja'
      },
      highlight = { enable = true }, -- Enables syntax highlighting
      indent = { enable = true },    -- Enables Treesitter-based indentation
      auto_install = true,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<leader>si',
          node_incremental = '<leader>sn',
          scope_incremental = '<leader>ss',
          node_decremental = '<leader>sd',
        },
      },
    })
  end,
}
