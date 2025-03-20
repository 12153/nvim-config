return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          change       = { text = "│" },
          delete       = { text = "_" },
          add          = { text = "│" },
          topdelete    = { text = "‾" },
          changedelete = { text = "~" },
        },
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          vim.keymap.set("n", "]c", function() gs.next_hunk() end, { buffer = bufnr, desc = "Next Git Hunk" })
          vim.keymap.set("n", "[c", function() gs.prev_hunk() end, { buffer = bufnr, desc = "Prev Git Hunk" })
          vim.keymap.set("n", "<leader>gp", function() gs.preview_hunk() end,
            { buffer = bufnr, desc = "Preview Git Hunk" })
          vim.keymap.set("n", "<leader>gr", function() gs.reset_hunk() end, { buffer = bufnr, desc = "Reset Git Hunk" })
        end,
      })
    end
  },
  {
    "tpope/vim-fugitive", -- Adds `:Git` commands
    cmd = { "Git", "Gdiffsplit", "Gvdiffsplit" },
  },
  {
    "kdheepak/lazygit.nvim", -- Open Lazygit UI inside Neovim
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<CR>", desc = "Open LazyGit" }
    }
  },
  {
    "f-person/git-blame.nvim",
    config = function()
      vim.g.gitblame_enabled = 0 -- Enable with <leader>gb
    end,
    keys = {
      { "<leader>gb", "<cmd>GitBlameToggle<CR>", desc = "Toggle Git Blame" }
    }
  }
}
