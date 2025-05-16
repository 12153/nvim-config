return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Adds icons support
  config = function()
    require('lualine').setup({
    })
  end,
}

