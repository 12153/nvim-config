return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "dark",
        transparent = false,
        term_colors = true,
        code_style = {
          comments = "italic",
          keywords = "bold",
          functions = "italic,bold",
          strings = "none",
          variables = "none"
        },
        lualine = {
          transparent = false,
        }
      })
      require("onedark").load()
    end
  }
}
