-- Before you able to use this file
-- please be sure that all the necessary binary (e.g. prettier, black) is already installed on the device
local null = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null.setup({
	sources = {
		null.builtins.formatting.stylua,
		null.builtins.formatting.prettier.with({
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
		}),
		null.builtins.formatting.black,
		null.builtins.formatting.gofmt,
		null.builtins.diagnostics.eslint,
		null.builtins.diagnostics.flake8,
		null.builtins.completion.spell,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
})
