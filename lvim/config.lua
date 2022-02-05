-- luacheck:ignore 112
-- luacheck:ignore 113

--------------------------------------------------------------------------------
-- vim
--------------------------------------------------------------------------------
-- relative line numbers
vim.opt.relativenumber = true

-- scrolling
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4

-- substitution
vim.opt.gdefault = true

--------------------------------------------------------------------------------
-- key bindings
--------------------------------------------------------------------------------
-- leader key
lvim.leader = "space"

-- command mode
lvim.keys.normal_mode["<CR>"] = ":"
lvim.keys.visual_mode["<CR>"] = ":"

-- disable ex-mode
lvim.keys.normal_mode["Q"] = "<Nop>"

-- insert navigation
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"

-- save
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.visual_mode["<C-s>"] = "<Esc>:w<cr>"
lvim.keys.insert_mode["<C-s>"] = "<Esc>:w<cr>"

-- quit
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

--------------------------------------------------------------------------------
-- LunarVim
--------------------------------------------------------------------------------
-- format on save
lvim.format_on_save = true

-- logging
lvim.log.level = "warn"

-- colorscheme
lvim.colorscheme = "onedarker"

-- plugins
lvim.builtin.dashboard.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

--------------------------------------------------------------------------------
-- LSP
--------------------------------------------------------------------------------
-- automatic server installation
lvim.lsp.automatic_servers_installation = true

-- treesitter
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"css",
	"json",
	"haskell",
	"html",
	"lua",
	"python",
	"rust",
	"toml",
	"yaml",
}
lvim.builtin.treesitter.highlight.enabled = true

--------------------------------------------------------------------------------
-- Telescope
--------------------------------------------------------------------------------
lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 40
lvim.builtin.telescope.defaults.layout_config.width = 0.99
lvim.builtin.telescope.defaults.layout_strategy = "vertical"

--------------------------------------------------------------------------------
-- Which Key
--------------------------------------------------------------------------------
local which_key = lvim.builtin.which_key.mappings

which_key["b"]["d"] = {
	"<Cmd>BufferDelete<CR>",
	"Delete",
}
which_key["c"] = { "<Cmd>Telescope commands<CR>", "Commands" }
which_key["m"] = { "<Cmd>Telescope marks<CR>", "Marks" }
which_key["o"] = {
	name = "...",
	f = { "<Cmd>Telescope oldfiles<CR>", "Old files" },
}
which_key["q"] = { "<Cmd>Telescope quickfix<CR>", "Quickfix" }
which_key["t"] = {
	name = "+Trouble",
	r = { "<Cmd>Trouble lsp_references<cr>", "References" },
	f = { "<Cmd>Trouble lsp_definitions<cr>", "Definitions" },
	d = { "<Cmd>Trouble document_diagnostics<cr>", "Document diagnostics" },
	q = { "<Cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<Cmd>Trouble loclist<cr>", "LocationList" },
	w = { "<Cmd>Trouble workspace_diagnostics<cr>", "Workspace diagnostics" },
}
which_key["w"] = {
	name = "+Windows",
	h = { "<Cmd>set nosplitright<CR><Cmd>vsplit<CR>", "Split to left" },
	j = { "<Cmd>set splitbelow<CR><Cmd>split<CR>", "Split below" },
	k = { "<Cmd>set nosplitbelow<CR><Cmd>split<CR>", "Split above" },
	l = { "<Cmd>set splitright<CR><Cmd>vsplit<CR>", "Split to right" },
}
which_key["S"] = {
	name = "Spectre",
	f = { "viw<Cmd>lua require('spectre').open_file_search()<CR>", "File" },
	s = { "<Cmd>lua require('spectre').open()<CR>", "Search" },
	w = {
		"<Cmd>lua require('spectre').open_file_search({select_word=true})<CR>",
		"Word",
	},
}

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"css",
	"haskell",
	"javascript",
	"json",
	"lua",
	"python",
	"rust",
	"typescript",
	"yaml",
}

lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheRest` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

--------------------------------------------------------------------------------
-- plugins
--------------------------------------------------------------------------------
lvim.plugins = {

	-- git: conflict markers
	{ "rhysd/conflict-marker.vim" },

	-- git: mergetool
	{
		"samoshkin/vim-mergetool",
		config = function()
			vim.g.mergetool_layout = "LmR"
			vim.g.mergetool_prefer_revisionn = "unmodified"
		end,
	},

	-- LSP: trouble
	{ "folke/trouble.nvim", cmd = "TroubleToggle" },

	-- navigation: re-open files at last edit position
	{
		"ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup({})
		end,
	},

	-- navigation: pairs of bracket mappings
	{ "tpope/vim-unimpaired" },

	-- navigation: sneak motion
	{ "ggandor/lightspeed.nvim" },

	-- searching: hlsearch lens
	{ "kevinhwang91/nvim-hlslens" },

	-- searching: clear hlsearch when done
	{ "romainl/vim-cool" },

	-- text objects: lines
	{ "wellle/line-targets.vim" },

	-- text objects: matching quotes, backticks and pipe
	{ "airblade/vim-matchquote" },

	-- text objects: pair, quote, separator, argument, multi text
	{ "wellle/targets.vim" },

	-- themes
	{ "folke/tokyonight.nvim" },

	-- tmux
	{ "christoomey/vim-tmux-navigator" },

	-- viewing: absolute line numbers in inactive windows
	{ "jeffkreeftmeijer/vim-numbertoggle" },

	-- viewing: indent guides
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				indent_blankline_char = "▏",
			})
		end,
	},
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
