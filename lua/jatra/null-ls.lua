local null = require("null-ls")

null.setup({
	sources = {
		null.builtins.formatting.stylua,
		null.builtins.formatting.prettier.with({extra_args = {"--no-semi", "--single-quote", "--jsx-single-quote"}}),
		null.builtins.formatting.black,
		null.builtins.formatting.gofmt,
		null.builtins.diagnostics.eslint,
		null.builtins.diagnostics.flake8,
		null.builtins.completion.spell,
	},
})
