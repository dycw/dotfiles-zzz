return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			-- debuggers
			"debugpy",
			-- linters (https://github.com/mfussenegger/nvim-lint#available-linters)
			"hadolint",
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
