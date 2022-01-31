local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({ { exe = "shfmt" } })

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({ { exe = "shellcheck" } })
