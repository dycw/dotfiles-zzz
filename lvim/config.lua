-- luacheck:ignore 112
-- luacheck:ignore 113

--------------------------------------------------------------------------------
-- vim
--------------------------------------------------------------------------------
-- colorcolumn
vim.opt.colorcolumn = "80"

-- mouse
vim.opt.mouse = ""

-- relative line numbers
vim.opt.relativenumber = true

-- substitution
vim.opt.gdefault = true

-- wrap
vim.opt.wrap = true

--------------------------------------------------------------------------------
-- key bindings
--------------------------------------------------------------------------------
-- command mode
lvim.keys.normal_mode["<CR>"] = ":"
lvim.keys.visual_mode["<CR>"] = ":"

-- disable ex-mode
lvim.keys.normal_mode["Q"] = "<Nop>"

-- insert mode: navigation
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
	-- trim trailing spaces
	{ "BufWritePre", "*", "lua MiniTrailspace.trim()" },

	-- keep windows equally sized
	{ "VimResized", "*", "wincmd =" },
}

--------------------------------------------------------------------------------
-- formatters
--------------------------------------------------------------------------------
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	-- lua
	{ exe = "stylua", filetypes = { "lua" } },
	-- python
	{ exe = "black", filetypes = { "python" } },
	{ exe = "isort", filetypes = { "python" } },
	-- sh
	{ exe = "shfmt", filetypes = { "sh", "shell", "shellscript", "zsh" } },
	-- prettier
	{
		exe = "prettier",
		args = { "-w" },
		filetypes = {
			"css",
			"html",
			"htmldjango",
			"javascript",
			"javascriptreact",
			"json",
			"markdown",
			"toml",
			"yaml",
		},
	},
})

--------------------------------------------------------------------------------
-- linters
--------------------------------------------------------------------------------
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	-- javascript
	{ exe = "eslint", filetypes = { "javascript", "javascriptreact" } },
	-- lua
	{ exe = "luacheck", filetypes = { "lua" } },
	-- python
	{ exe = "flake8", filetypes = { "python" } },
	-- sh
	{ exe = "shellcheck", filetypes = { "sh" } },
})

--------------------------------------------------------------------------------
-- LSP
--------------------------------------------------------------------------------
-- automatic server installation
lvim.lsp.automatic_servers_installation = true

-- language servers
local opts = { filetypes = { "html", "htmldjango" } }
require("lvim.lsp.manager").setup("html", opts)

-- treesitter
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"haskell",
	"html",
	"json",
	"lua",
	"python",
	"rust",
	"yaml",
	"zig",
}
lvim.builtin.treesitter.highlight.enabled = true
-- indent bug (https://bit.ly/37TjxiG, https://bit.ly/3y9KNE6)
lvim.builtin.treesitter.indent = { enable = true, disable = { "python" } }

--------------------------------------------------------------------------------
-- Nvim tree
--------------------------------------------------------------------------------
lvim.builtin.nvimtree.setup.git.ignore = true
lvim.builtin.nvimtree.setup.view.relativenumber = true

--------------------------------------------------------------------------------
-- Telescope
--------------------------------------------------------------------------------
lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 40
lvim.builtin.telescope.defaults.layout_config.width = 0.99
lvim.builtin.telescope.defaults.layout_strategy = "vertical"
lvim.builtin.telescope.defaults.path_display = { "smart" }

--------------------------------------------------------------------------------
-- Which Key
--------------------------------------------------------------------------------
local which_key = lvim.builtin.which_key.mappings

which_key["a"] = {
	name = "...",
	c = { "<Cmd>Telescope autocommands<CR>", "Autocommands" },
}
which_key["b"] = {
	name = "...",
	-- default
	b = { "<Cmd>Telescope buffers<CR>", "Buffers" },
	-- Bracey
	r = {
		name = "Bracey",
		s = { "<Cmd>Bracey<CR>", "Start" },
		r = { "<Cmd>BraceyReload<CR>", "Reload" },
	},
	-- others
	f = { "<Cmd>Telescope current_buffer_fuzzy_find<CR>", "Fuzzy find" },
	k = { "<Cmd>BufferKill<CR>", "Buffer kill" },
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
	d = { "<Cmd>Telescope diagnostics<CR>", "Diagnostics" },
	j = { "<Cmd>lua vim.diagnostic.goto_next()<CR>", "Diagnostics: next" },
	k = { "<Cmd>lua vim.diagnostic.goto_prev()<CR>", "Diagnostics: previous" },
	-- telescope
	f = { "<Cmd>Telescope lsp_definitions<CR>", "Definitions" },
	s = { "<Cmd>Telescope lsp_document_symbols<CR>", "Document symbols" },
}
which_key["e"] = {
	name = "...",
	m = { "<Cmd>EnMasse<CR>", "EnMasse" },
}
which_key["f"] = {
	name = "...",
	-- default
	f = { "<Cmd>Telescope find_files<CR>", "Find files" },
	-- telescope
	t = { "<Cmd>Telescope filetypes<CR>", "File types" },
}
which_key["g"] = {
	name = "...",
	b = { "<Cmd>Telescope git_bcommits<CR>", "Git buffer commits" },
	c = { "<Cmd>Telescope git_commits<CR>", "Git commits" },
	f = { "<Cmd>Telescope git_files<CR>", "Git files" },
	r = { "<Cmd>Telescope grep_string<CR>", "Grep string" },
	s = { "<Cmd>Telescope git_status<CR>", "Git status" },
}
which_key["h"] = {
	name = "...",
	-- default
	h = { "<Cmd>Telescope harpoon marks<CR>", "Harpoon" },
	-- harpoon
	a = { "<Cmd>lua require('harpoon.mark').add_file()<CR>", "Harpoon: add" },
	j = { "<Cmd>lua require('harpoon.ui').nav_next()<CR>", "Harpoon: next" },
	k = {
		"<Cmd>lua require('harpoon.ui').nav_prev()<CR>",
		"Harpoon: previous",
	},
	-- help
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
	-- LSP
	s = {
		name = "LSP",
		i = { "<Cmd>LspInfo<CR>", "Info" },
		r = { "<Cmd>LspRestart<CR>", "Restart" },
	},
	-- trouble
	d = { "<Cmd>Trouble document_diagnostics<CR>", "Trouble: diagnostics" },
	f = { "<Cmd>Trouble lsp_definitions<CR>", "Trouble: definitions" },
	r = { "<Cmd>Trouble lsp_references<CR>", "Trouble: deferences" },
	q = { "<Cmd>Trouble quickfix<CR>", "Trouble: quick fix" },
	w = {
		"<Cmd>Trouble workspace_diagnostics<CR>",
		"Trouble: Workspace diagnostics",
	},
	-- others
	g = { "<Cmd>Telescope live_grep<CR>", "Live grep" },
	l = { "<Cmd>Telescope loclist<CR>", "Location list" },
}
which_key["m"] = {
	name = "...",
	-- default
	m = { "<Cmd>Telescope marks<CR>", "Marks" },
	-- mergetool
	j = { "<Cmd>MergetoolDiffExchangeLeft<CR>", "Exchange: left" },
	k = { "<Cmd>MergetoolDiffExchangeLeft<CR>", "Exchange: right" },
	l = { "<Cmd>MergetoolPreferLocal<CR>", "Prefer: local" },
	r = { "<Cmd>MergetoolPreferRemote<CR>", "Prefer: remote" },
	q = { "<Cmd>MergetoolStop<CR>", "Quit" },
}
which_key["o"] = {
	name = "...",
	f = { "<Cmd>Telescope oldfiles<CR>", "Old files" },
}
which_key["p"] = {
	name = "...",
	-- packer
	s = { "<Cmd>PackerSync<CR>", "Packer sync" },
	-- projects
	r = { "<Cmd>Telescope projects<CR>", "Projects" },
}
which_key["q"] = { "<Cmd>Telescope quickfix<CR>", "Quickfix" }
which_key["r"] = {
	name = "...",
	-- LSP
	c = {
		"<Cmd>Telescope lsp_range_code_actions<CR>",
		"Range code actions",
	},
	f = { "<Cmd>Telescope lsp_references<CR>", "References" },
	g = { "<Cmd>Telescope registers<CR>", "Registers" },
	n = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
	-- repos
	p = { "<Cmd>Telescope repo list<CR>", "Repos" },
}
which_key["s"] = {
	name = "...",
	-- sort
	o = {
		name = "Sort",
		n = { "<Cmd>Sort n<CR>", "Numbers" },
		t = { "<Cmd>Sort<CR>", "Text" },
	},
	-- spectre
	p = {
		name = "Spectre",
		o = { "<Cmd>lua require('spectre').open()<CR>", "Open" },
		f = {
			"<Cmd>lua require('spectre').open_file_search()<CR>",
			"File search",
		},
		w = {
			"<Cmd>lua require('spectre').open_visual({select_word=true})<CR>",
			"Word",
		},
	},
	-- swap
	w = { "<Cmd>ISwapWith<CR>", "Swap with" },
	-- telescope
	h = { "<Cmd>Telescope search_history<CR>", "Search history" },
	s = { "<Cmd>Telescope spell_suggest<CR>", "Spell suggest" },
	y = { "<Cmd>Telescope symbols<CR>", "Symbols" },
}
which_key["t"] = {
	name = "...",
	-- default
	t = { "<Cmd>NvimTreeToggle<CR>", "NvimTree" },
	-- others
	d = { "<Cmd>Telescope lsp_type_definitions<CR>", "Type definitions" },
}
which_key["v"] = {
	name = "...",
	o = { "<Cmd>Telescope vim_options<CR>", "Vim options" },
}
which_key["w"] = {
	name = "...",
	-- default
	w = { "<Cmd>lua require('nvim-window').pick()<CR>", "Windows" },
	-- windows
	h = { "<Cmd>set nosplitright<CR><Cmd>vsplit<CR>", "Window: left" },
	j = { "<Cmd>set splitbelow<CR><Cmd>split<CR>", "Window: down" },
	k = { "<Cmd>set nosplitbelow<CR><Cmd>split<CR>", "Window: up" },
	l = { "<Cmd>set splitright<CR><Cmd>vsplit<CR>", "Window: right" },
	-- LSP
	s = {
		"<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>",
		"Workspace symbols",
	},
}
which_key["z"] = {
	name = "...",
	-- default
	z = {
		"<Cmd>lua require('telescope').extensions.zoxide.list{}<CR>",
		"Zoxide",
	},
}

local which_key_visual = lvim.builtin.which_key.vmappings

which_key_visual["c"] = { ":Telescope commands<CR>", "Commands" }
which_key_visual["n"] = { ":NR<CR>", "NrrwRgn" }
which_key_visual["s"] = {
	name = "Sort/Spectre",
	o = {
		name = "Sort",
		n = { ":Sort n<CR>", "Numbers" },
		t = { ":Sort<CR>", "Text" },
	},
	p = {
		":lua require('spectre').open_visual({select_word=true})<CR>",
		"Spectre",
	},
}
which_key_visual["v"] = {
	name = "...",
	-- default
	v = { ":VSSplit<CR>", "VSSplit" },
	-- others
	j = { ":VSSplitBelow<CR>", "VSSplitBelow" },
	k = { ":VSSplitAbove<CR>", "VSSplitAbove" },
}

--------------------------------------------------------------------------------
-- plugins
--------------------------------------------------------------------------------
lvim.plugins = {
	-- editing: better escape
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = { "jj", "jk", "kj", "kk" },
			})
		end,
	},

	-- editing: change word casing
	{ "arthurxavierx/vim-caser" },

	-- editing: expand/shrink visual selection
	{ "terryma/vim-expand-region" },

	-- editing: expand expression
	{ "allendang/nvim-expand-expr" },

	-- editing: find and replace
	{
		"windwp/nvim-spectre",
		config = function()
			require("spectre").setup({ live_update = true })
		end,
	},

	-- editing: increment/decrement
	{
		"monaqa/dial.nvim",
		config = function()
			vim.api.nvim_set_keymap(
				"n",
				"<C-a>",
				require("dial.map").inc_normal(),
				{ noremap = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<C-x>",
				require("dial.map").dec_normal(),
				{ noremap = true }
			)
			vim.api.nvim_set_keymap(
				"v",
				"<C-a>",
				require("dial.map").inc_visual(),
				{ noremap = true }
			)
			vim.api.nvim_set_keymap(
				"v",
				"<C-x>",
				require("dial.map").dec_visual(),
				{ noremap = true }
			)
			vim.api.nvim_set_keymap(
				"v",
				"g<C-a>",
				require("dial.map").inc_gvisual(),
				{ noremap = true }
			)
			vim.api.nvim_set_keymap(
				"v",
				"g<C-x>",
				require("dial.map").dec_gvisual(),
				{ noremap = true }
			)
			local augend = require("dial.augend")
			require("dial.config").augends:register_group({
				default = {
					augend.integer.alias.decimal,
					augend.integer.alias.decimal_int,
					augend.integer.alias.hex,
					augend.integer.alias.octal,
					augend.integer.alias.binary,
					augend.date.alias["%Y/%m/%d"],
					augend.date.alias["%Y-%m-%d"],
					augend.date.alias["%H:%M:%S"],
					augend.date.alias["%H:%M"],
					augend.constant.alias.bool,
					augend.constant.alias.alpha,
					augend.constant.alias.Alpha,
					augend.semver.alias.semver,
				},
			})
		end,
	},

	-- editing: missing directories
	{
		"jghauser/mkdir.nvim",
		config = function()
			require("mkdir")
		end,
	},

	-- editing: multiple cursors
	{ "mg979/vim-visual-multi" },

	-- editing: narrow region
	{ "chrisbra/nrrwrgn" },

	-- editing: quickfix list editing
	{ "olical/vim-enmasse" },

	-- editing: quoting and parenthesizing
	{ "tpope/vim-surround" },

	-- editing: repeat plugin actions
	{ "tpope/vim-repeat" },

	-- editing: sort
	{ "sqve/sort.nvim" },

	-- editing: swap function arguments, list elements
	{ "mizlan/iswap.nvim" },

	-- editing: visual splits
	{ "wellle/visual-split.vim" },

	-- git: committia
	{ "rhysd/committia.vim" },

	-- git: conflict markers
	{ "rhysd/conflict-marker.vim" },

	-- git: git diff
	{ "sindrets/diffview.nvim" },

	-- git: mergetool
	{
		"samoshkin/vim-mergetool",
		config = function()
			vim.g.mergetool_layout = "rml,b"
			vim.g.mergetool_prefer_revisionn = "unmodified"
		end,
	},

	-- HTML: live editing
	{
		"turbio/bracey.vim",
		cmd = { "Bracey", "BracyStop", "BraceyReload", "BraceyEval" },
		run = "npm install --prefix server",
	},

	-- LSP: trouble
	{ "folke/trouble.nvim", cmd = "TroubleToggle" },

	-- mini: multiple plugins
	{
		"echasnovski/mini.nvim",
		config = function()
			-- editing: trailing space
			require("mini.trailspace").setup()

			-- viewing: indent guides
			require("mini.indentscope").setup({ symbol = "▏" })
		end,
	},

	-- navigation: harpoon
	{
		"theprimeagen/harpoon",
		config = function()
			require("telescope").load_extension("harpoon")
		end,
	},

	-- navigation: pairs of bracket mappings
	{ "tpope/vim-unimpaired" },

	-- navigation: re-open files at last edit position
	{
		"ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup()
		end,
	},

	-- navigation: repos
	{
		"cljoly/telescope-repo.nvim",
		config = function()
			require("telescope").load_extension("repo")
		end,
	},

	-- navigation: sneak motion
	{ "ggandor/lightspeed.nvim" },

	-- navigation: symbols outline
	{ "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline" },

	-- navigation: windows
	{ "https://gitlab.com/yorickpeterse/nvim-window.git" },

	-- navigation: zoxide
	{
		"jvgrootveld/telescope-zoxide",
		config = function()
			require("telescope").load_extension("zoxide")
		end,
	},

	-- searching: hlsearch lens
	{ "kevinhwang91/nvim-hlslens" },

	-- searching: clear hlsearch when done
	{ "romainl/vim-cool" },

	-- searching: searching from a visual selection
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

	-- treesitter: HTML tags
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	-- tmux
	{
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup({
				copy_sync = {
					enable = true,
					redirect_to_clipboard = true,
				},
				navigation = {
					enable_default_keybindings = true,
				},
				resize = {
					enable_default_keybindings = true,
					resize_step_x = 5,
					resize_step_y = 5,
				},
			})
		end,
	},

	-- viewing: absolute line numbers in inactive windows
	{ "jeffkreeftmeijer/vim-numbertoggle" },

	-- viewing: context
	{
		"romgrk/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup({
				enable = true,
				throttle = true,
				max_lines = 0,
				patterns = { default = { "class", "function", "method" } },
			})
		end,
	},

	-- viewing: indent guides
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				indent_blankline_char = "▏",
			})
		end,
	},

	-- viewing: markdown
	{ "ellisonleao/glow.nvim", branch = "main" },

	-- viewing: marks in gutter
	{ "kshenoy/vim-signature" },
}

-- require("luasnip.loaders.from_vscode").lazy_load({
-- 	paths = { "~/.config/snippets" },
-- })
