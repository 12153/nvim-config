return {
  "3rd/image.nvim",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("image").setup({
      backend = "kitty",
    })
  end,
}
