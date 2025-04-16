return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require('telescope')
      local builtin = require('telescope.builtin')

      telescope.setup({
        defaults = {
          file_ignore_patterns = { "node_modules", ".git" }, -- still ignoring noisy boys
        },
        pickers = {
          find_files = {
            hidden = true,
          },
        }
      })

      -- Keybindings for Telescope
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {
        desc = 'Telescope find files'
      })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {
        desc = 'Telescope live grep'
      })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {
        desc = 'Telescope buffers'
      })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {
        desc = 'Telescope help tags'
      })
      vim.keymap.set('n', '<leader>fa', builtin.git_files, {
        desc = 'Show git files'
      })
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end, { desc = "" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}

