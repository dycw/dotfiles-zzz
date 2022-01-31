local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({ { exe = "black" }, { exe = "isort" } })

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({ { exe = "flake8" } })
