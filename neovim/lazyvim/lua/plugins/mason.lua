return {
	"williamboman/mason.nvim",
	opts = {
		-- https://github.com/mason-org/mason-registry/tree/main/packages
		ensure_installed = {
			-- debuggers
			"debugpy",
			-- linters (https://github.com/mfussenegger/nvim-lint#available-linters)
			"eslint_d",
			"hadolint",
			"jsonlint",
			"luacheck",
			"shellcheck",
			"sqlfluff",
			"yamllint",
			-- formatters (https://github.com/stevearc/conform.nvim#formatters)
			"elm-format",
			"gofumpt",
			"rustywind",
			"shfmt",
			"sql-formatter",
			"stylua",
			-- linters + formatters
			"biome",
			"djlint",
			"markdownlint",
		},
	},
}
