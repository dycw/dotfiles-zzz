return {
	"mfussenegger/nvim-lint",
	opts = {
		-- Event to trigger linters
		events = { "BufWritePost", "BufReadPost", "InsertLeave" },
		linters_by_ft = {
			-- https://github.com/mfussenegger/nvim-lint#available-linters
			dockerfile = { "hadolint" },
			haskell = { "hlint" },
			htmldjango = { "djlint" },
			javascript = { "eslint" },
			javascriptreact = { "eslint" },
			json = { "jsonlint" },
			jsonc = { "jsonlint" },
			lua = { "luacheck" },
			markdown = { "markdownlint" },
			python = { "ruff" },
			sh = { "shellcheck" },
			sql = { "sqlfluff" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			yaml = { "yamllint" },
			zsh = { "shellcheck" },
			-- javascript = { "biome" }, -- nvim-lint does not support yet
			-- javascriptreact = { "biome" }, -- nvim-lint does not support yet
			-- json = { "biome" }, -- nvim-lint does not support yet
			-- jsonc = { "biome" }, -- nvim-lint does not support yet
			-- typescript = { "biome" }, -- nvim-lint does not support yet
			-- typescriptreact = { "biome" }, -- nvim-lint does not support yet
			-- css = { "biome" }, -- biome does not support yet
			-- html = { "biome" }, -- biome does not support yet
			-- htmldjango = { "biome" }, -- biome does not support yet
			-- markdown = { "biome" }, -- biome does not support yet
			-- svelte = { "biome" }, -- biome does not support yet
			-- vue = { "biome" }, -- biome does not support yet
		},
		-- LazyVim extension to easily override linter options
		-- or add custom linters.
		---@type table<string,table>
		linters = {
			-- -- Example of using selene only when a selene.toml file is present
			-- selene = {
			--   -- `condition` is another LazyVim extension that allows you to
			--   -- dynamically enable/disable linters based on the context.
			--   condition = function(ctx)
			--     return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
			--   end,
			-- },
		},
	},
}
