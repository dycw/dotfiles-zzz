-- luacheck:ignore 112
-- luacheck:ignore 113

--------------------------------------------------------------------------------
-- vim
--------------------------------------------------------------------------------
-- mouse
vim.opt.mouse = ""

-- relative line numbers
vim.opt.relativenumber = true

-- scrolling
vim.opt.scrolloff = 20
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

which_key["a"] = {
	name = "...",
	c = { "<Cmd>Telescope autocommands<CR>", "Autocommands" },
}
which_key["b"] = {
	name = "...",
	-- default
	b = { "<Cmd>Telescope buffers<CR>", "Buffers" },
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
	d = { "<Cmd>Telescope diagnostics<CR>", "Diagostics" },
	-- others
	k = { "<Cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous diagnostic" },
	f = { "<Cmd>Telescope lsp_definitions<CR>", "Definitions" },
	---- diagnostics
	j = { "<Cmd>lua vim.diagnostic.goto_next()<CR>", "Next diagostic" },
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
	-- trouble
	d = { "<Cmd>Trouble document_diagnostics<CR>", "Diagnostics" },
	f = { "<Cmd>Trouble lsp_definitions<CR>", "Definitions" },
	r = { "<Cmd>Trouble lsp_references<CR>", "References" },
	q = { "<Cmd>Trouble quickfix<CR>", "Quick Fix" },
	w = { "<Cmd>Trouble workspace_diagnostics<CR>", "Workspace diagnostics" },
	-- others
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
	c = {
		"<Cmd>Telescope lsp_range_code_actions<CR>",
		"Range code actions",
	},
	f = { "<Cmd>Telescope lsp_references<CR>", "References" },
	g = { "<Cmd>Telescope registers<CR>", "Registers" },
	n = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
}
which_key["s"] = {
	name = "...",
	-- default
	s = { "<Cmd>lua require('spectre').open()<CR>", "Spectre" },
	-- Spectre
	f = {
		"<Cmd>lua require('spectre').open_file_search()<CR>",
		"Spectre: File",
	}, -- others
	h = { "<Cmd>Telescope search_history<CR>", "Search history" },
	p = { "<Cmd>Telescope spell_suggest<CR>", "Spell suggest" },
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

local which_key_visual = lvim.builtin.which_key.vmappings

which_key_visual["c"] = { ":Telescope commands<CR>", "Commands" }
which_key_visual["n"] = { r = { ":NR<CR>", "NrrwRgn" } }
which_key_visual["s"] = {
	":lua require('spectre').open_visual({select_word=true})<CR>",
	"Spectre",
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

	-- editing: change word casing
	{ "arthurxavierx/vim-caser" },

	-- editing: expand/shrink visual selection
	{ "terryma/vim-expand-region" },

	-- editing: find and replace
	{
		"windwp/nvim-spectre",
		config = function()
			require("spectre").setup({ live_update = true })
		end,
	},

	-- editing: increment/decrement
	-- {
	-- 	"monaqa/dial.nvim",
	-- 	config = function()
	-- 		local dial = require("dial")
	-- 		vim.cmd([[
	-- 			nmap <C-a> <Plug>(dial-increment)
	-- 			nmap <C-x> <Plug>(dial-decrement)
	-- 			vmap <C-a> <Plug>(dial-increment)
	-- 			vmap <C-x> <Plug>(dial-decrement)
	-- 			vmap g<C-a> <Plug>(dial-increment-additional)
	-- 			vmap g<C-x> <Plug>(dial-decrement-additional)
	-- 		]])
	-- 		dial.augends["custom#boolean"] = dial.common.enum_cyclic({
	-- 			name = "boolean",
	-- 			strlist = { "true", "false" },
	-- 		})
	-- 		table.insert(dial.config.searchlist.normal, "custom#boolean")
	-- 		dial.augends["custom#Boolean"] = dial.common.enum_cyclic({
	-- 			name = "Boolean",
	-- 			strlist = { "True", "False" },
	-- 		})
	-- 		table.insert(dial.config.searchlist.normal, "custom#Boolean")
	-- 	end,
	-- },

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

	-- editing: repeat plugin actions
	{ "tpope/vim-repeat" },

	-- editing: quickfix list editing
	{ "olical/vim-enmasse" },

	-- editing: quoting and parenthesizing
	{ "tpope/vim-surround" },

	-- editing: visual splits
	{ "wellle/visual-split.vim" },

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

	-- navigation: pairs of bracket mappings
	{ "tpope/vim-unimpaired" },

	-- navigation: re-open files at last edit position
	{
		"ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup()
		end,
	},

	-- navigation: sneak motion
	{ "ggandor/lightspeed.nvim" },

	-- navigation: symbols outline
	-- { "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline" },

	-- navigation: windows
	{ "https://gitlab.com/yorickpeterse/nvim-window.git" },

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
}
