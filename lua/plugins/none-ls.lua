-- None-LS is a fork of Null-LS
-- Its job is to fill the gap between linting tools and an LSP client.
-- The LSP client talks to the linting/diagnostic tools and behaves normally.
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        -- Lua
				null_ls.builtins.formatting.stylua,
        -- Ruby
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.diagnostics.rubocop,
			},
		})

		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
	end,
}
