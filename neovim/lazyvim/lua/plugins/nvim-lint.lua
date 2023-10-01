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
			javascript = { "biome" },
			javascriptreact = { "biome" },
			json = { "biome" },
			jsonc = { "biome" },
			lua = { "luacheck" },
			markdown = { "markdownlint" },
			python = { "ruff" },
			sh = { "shellcheck" },
			sql = { "sqlfluff" },
			typescript = { "biome" },
			typescriptreact = { "biome" },
			yaml = { "yamllint" },
			zsh = { "shellcheck" },
			-- css = { "biome" }, -- no ready
			-- html = { "biome" }, -- not ready
			-- htmldjango = { "biome" }, -- not ready
			-- markdown = { "biome" }, -- not ready
			-- svelte = { "biome" }, -- no ready
			-- vue = { "biome" }, -- no ready
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
