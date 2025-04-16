return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    local formatting = null_ls.builtins.formatting;
    local completion = null_ls.builtins.completion;
    local diagnostics = null_ls.builtins.diagnostics;

    null_ls.setup({
      sources = {
        formatting.stylua,
        completion.spell,

        diagnostics.eslint_d,
        formatting.prettier,

        diagnostics.buf_ls,
        formatting.protolint,

        formatting.rustfmt,
        diagnostics.rust_analyzer,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end
}
