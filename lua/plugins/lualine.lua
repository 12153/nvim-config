return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Adds icons support
  config = function()
    require('lualine').setup({
      options = {
        theme = 'dracula', -- Automatically set the theme based on colorscheme
      },
    })
  end,
}

