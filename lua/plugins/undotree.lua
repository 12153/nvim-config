return {
  {
    "mbbill/undotree",
    config = function()
      -- Enable persistent undo (optional but recommended)
      vim.opt.undofile = true
      vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"

      -- Keybinding to toggle Undo Tree
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle UndoTree" })
    end
  }
}

