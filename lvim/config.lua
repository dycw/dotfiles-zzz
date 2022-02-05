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
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.visual_mode["<C-s>"] = "<Esc>:w<CR>"
lvim.keys.insert_mode["<C-s>"] = "<Esc>:w<CR>"

-- quit
lvim.keys.normal_mode["<C-q>"] = ":q<CR>"

--------------------------------------------------------------------------------
-- autocommands
--------------------------------------------------------------------------------
lvim.autocommands.custom_groups = {
	-- keep windows equally sized
	{ "VimResized", "*", "wincmd =" },
}

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
lvim.builtin.treesitter.ensure_installed = "maintained"
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

which_key["b"] = {
	name = "...",
	b = { "<Cmd>Telescope buffers<CR>", "Buffers" },
	d = { "<Cmd>BufferDelete<CR>", "Delete" },
	f = { "<Cmd>Telescope current_buffer_fuzzy_find<CR>", "Fuzzy find" },
}
which_key["c"] = {
	name = "...",
	-- default
	c = { "<Cmd>Telescope commands<CR>", "Commands" },
	-- others
	a = { "<Cmd>Telescope lsp_code_actions<CR>", "Code actions" },
	h = { "<Cmd>Telescope command_history<CR>", "Command history" },
}
which_key["d"] = {
	name = "...",
	-- diagnostics
	d = { "<Cmd>Telescope diagnostics<CR>", "Diagostics" },
	j = { "<Cmd>lua vim.diagnostic.goto_next()<CR>", "Next diagostic" },
	k = { "<Cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous diagnostic" },
	-- definitions
	f = { "<Cmd>Telescope lsp_definitions<CR>", "Definitions" },
	s = { "<Cmd>Telescope lsp_document_symbols<CR>", "Document symbols" },
}
which_key["f"] = {
	name = "...",
	f = { "<Cmd>Telescope find_files<CR>", "Find files" },
}
which_key["h"] = {
	name = "...",
	t = { "<Cmd>Telescope help_tags<CR>", "Help tags" },
}
which_key["i"] = {
	name = "...",
	m = { "<Cmd>Telescope lsp_implementations<CR>", "Implementations" },
}
which_key["j"] = { "<Cmd>Telescope jumplist<CR>", "Jump list" }
which_key["k"] = {
	name = "...",
	m = { "<Cmd>Telescope keymaps<CR>", "Key maps" },
}
which_key["l"] = {
	name = "...",
	g = { "<Cmd>Telescope live_grep<CR>", "Live grep" },
	l = { "<Cmd>Telescope loclist<CR>", "Location list" },
}
which_key["m"] = { "<Cmd>Telescope marks<CR>", "Marks" }
which_key["o"] = {
	name = "...",
	f = { "<Cmd>Telescope oldfiles<CR>", "Old files" },
}
which_key["q"] = { "<Cmd>Telescope quickfix<CR>", "Quickfix" }
which_key["r"] = {
	name = "...",
	-- LSP
	f = { "<Cmd>Telescope lsp_references<CR>", "References" },
	g = { "<Cmd>Telescope registers<CR>", "Registers" },
	n = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
}
which_key["s"] = {
	name = "...",
	h = { "<Cmd>Telescope search_history<CR>", "Search history" },
}
which_key["t"] = {
	name = "+Trouble",

	r = { "<Cmd>Trouble lsp_references<cr>", "References" },
	f = { "<Cmd>Trouble lsp_definitions<cr>", "Definitions" },
	d = { "<Cmd>Trouble document_diagnostics<cr>", "Document diagnostics" },
	q = { "<Cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<Cmd>Trouble loclist<cr>", "LocationList" },
	w = { "<Cmd>Trouble workspace_diagnostics<cr>", "Workspace diagnostics" },
	--
	d = { "<Cmd>Telscope lsp_type_definitions<CR>", "Type definitions" },
}
which_key["w"] = {
	name = "...",
	-- windows
	h = { "<Cmd>set nosplitright<CR><Cmd>vsplit<CR>", "Window: left" },
	j = { "<Cmd>set splitbelow<CR><Cmd>split<CR>", "Window: down" },
	k = { "<Cmd>set nosplitbelow<CR><Cmd>split<CR>", "Window: up" },
	l = { "<Cmd>set splitright<CR><Cmd>vsplit<CR>", "Window: right" },
	-- LSP
	s = { "<Cmd>Telescope lsp_workspace_symbols<CR>", "Workspace symbols" },
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
	-- cosmetic: theme
	{ "folke/tokyonight.nvim" },

	-- editing: better escape
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = { "jj", "jk", "kj", "kk" },
			})
		end,
	},

	-- editing: expand/shrink visual selection
	{ "terryma/vim-expand-region" },

	-- editing: find and replace
	{ "windwp/nvim-spectre" },

	-- editing: increment/decrement
	{ "monaqa/dial.nvim" },

	-- editing: missing directories
	{ "jghauser/mkdir.nvim" },

	-- editing: multiple cursors
	{ "mg979/vim-visual-multi" },

	-- editing: narrow region
	{ "chrisbra/nrrwrgn" },

	-- editing: repeat plugin actions
	{ "tpope/vim-repeat" },

	-- editing: quickfix list editing
	{ "olical/vim-enmasse" },

	-- editing: quoting and parenthesizing
	{ "tpope/vim-surround" },

	-- git: conflict markers
	{ "rhysd/conflict-marker.vim" },

	-- git: git diff
	{ "sindrets/diffview.nvim" },

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

	-- navigation: symbols outline
	-- { "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline" },

	-- searching: hlsearch lens
	{ "kevinhwang91/nvim-hlslens" },

	-- searching: clear hlsearch when done
	{ "romainl/vim-cool" },

	-- searching: searching from a visual selectiong
	{ "bronson/vim-visual-star-search" },

	-- text objects: lines
	{ "wellle/line-targets.vim" },

	-- text objects: matching quotes, backticks and pipe
	{ "airblade/vim-matchquote" },

	-- text objects: pair, quote, separator, argument, multi text
	{ "wellle/targets.vim" },

	-- text objects: variable segments
	{
		"julian/vim-textobj-variable-segment",
		requires = { "kana/vim-textobj-user" },
	},

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

	-- viewing: marks in gutter
	{ "kshenoy/vim-signature" },

	-- viewing: syntax highlighting
	{ "sheerun/vim-polyglot" },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
