return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local completions = null_ls.builtins.completion

		null_ls.setup({
			sources = {
				-- lua
				formatting.stylua,
				diagnostics.luacheck,
				completions.spell,

				-- ts
				formatting.biome,
				diagnostics.biome,

				-- Rust
				formatting.rustfmt,
				diagnostics.clippy,

				-- Go
				diagnostics.gopls,
				formatting.gopls,

				-- Templ
				formatting.templ,
        diagnostics.templ,

				-- Protobuf
				formatting.buf,
				diagnostics.buf,

				-- jinja
				formatting.djlint,
				diagnostics.djlint,

				-- json
				formatting.jq,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
