return {
  {
    "navarasu/onedark.nvim",
    lazy = false, -- Load it immediately
    priority = 1000, -- Ensure it loads before everything else
    config = function()
      require("onedark").setup({
        style = "dark", -- Options: dark, darker, cool, deep, warm, warmer, light
        transparent = false, -- Set to true for a transparent background
        term_colors = true, -- Use terminal colors
        code_style = {
          comments = "italic",
          keywords = "bold",
          functions = "italic,bold",
          strings = "none",
          variables = "none"
        },
        lualine = {
          transparent = false, -- Use the same background for lualine
        }
      })
      require("onedark").load()
    end
  }
}

