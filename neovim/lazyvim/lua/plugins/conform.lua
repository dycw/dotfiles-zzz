return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			-- https://github.com/stevearc/conform.nvim#formatters
			dart = { "dart_format" },
			elm = { "elm_format" },
			go = { "gofumpt" },
			htmldjango = { "djlint", "rustywind" },
			lua = { "stylua" },
			python = { "black", "ruff_fix" },
			rust = { "rustfmt" },
			sh = { "shfmt" },
			sql = { "sql_formatter" },
			zig = { "zigfmt" },
			-- prettier
			css = { "prettier" },
			graphql = { "prettier" },
			json = { "prettier" },
			less = { "prettier" },
			markdown = { "prettier" },
			scss = { "prettier" },
			toml = { "prettier" },
			vue = { "prettier" },
			yaml = { "prettier" },
			-- prettier + rustywind
			html = { "prettier", "rustywind" },
			javascript = { "prettier", "rustywind" },
			javascriptreact = { "prettier", "rustywind" },
			typescript = { "prettier", "rustywind" },
			typescriptreact = { "prettier", "rustywind" },
		},
		-- LazyVim will merge the options you set here with builtin formatters.
		-- You can also define any custom formatters here.
		---@type table<string,table>
		formatters = {
			-- -- Example of using dprint only when a dprint.json file is present
			-- dprint = {
			--   condition = function(ctx)
			--     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
			--   end,
			-- },
		},
	},
}
