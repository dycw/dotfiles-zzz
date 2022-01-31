-- luacheck:ignore 112
-- luacheck:ignore 113

--------------------------------------------------------------------------------
-- vim
--------------------------------------------------------------------------------
-- line wrapping
vim.opt.breakindent = true
vim.opt.breakindentopt = { "shift:2" }

-- mouse
vim.opt.mouse = ""

-- relative line numbers
vim.opt.relativenumber = true

-- scrolling
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4

-- round indents to multiples of shiftwidth
vim.opt.shiftround = true

-- sessions
vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal"

-- substitution
vim.opt.gdefault = true

-- timeout for mapped sequence
vim.opt.timeoutlen = 50

-- width
vim.opt.colorcolumn = tostring(80)
vim.opt.textwidth = 0

--------------------------------------------------------------------------------
-- key bindings
--------------------------------------------------------------------------------
-- leader key
lvim.leader = "space"

-- buffers
lvim.keys.normal_mode["<Tab>"] = ":BufferNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferPrevious<CR>"

-- command mode
lvim.keys.normal_mode["<CR>"] = ":"
lvim.keys.visual_mode["<CR>"] = ":"

-- cut: no yank
lvim.keys.normal_mode["x"] = '"_x'
lvim.keys.visual_mode["x"] = '"_x'

-- delete: no yank
lvim.keys.normal_mode["d"] = '"_d'
lvim.keys.visual_mode["d"] = '"_d'

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

-- visual mode yank retains selection
lvim.keys.visual_mode["y"] = "ygv"

-- quit
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

--------------------------------------------------------------------------------
-- Which Key
--------------------------------------------------------------------------------
local which_key = lvim.builtin.which_key.mappings

which_key["a"] = {
	name = "Actions...",
	a = { "<Cmd>Telescope code_actions<CR>", "Code actions" },
	r = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
	s = { "<Cmd>ASToggle<CR>", "AutoSave" },
}
which_key["b"] = {
	name = "Buffers...",
	b = { "<Cmd>Telescope buffers<CR>", "Telescope [default]" },
	d = { "<Cmd>BufferDelete<CR>", "Delete" },
	j = { "<Cmd>BufferNext<CR>", "Next" },
	k = { "<Cmd>BufferPrevious<CR>", "Previous" },
	p = { "<Cmd>BufferPick<CR>", "Pick" },
	o = {
		name = "Order by...",
		l = {
			d = { "<Cmd>BufferOrderByDirectory<cr>", "Order by directory" },
			l = { "<Cmd>BufferOrderByLanguage<cr>", "Order by language" },
		},
	},
	["1"] = { "<Cmd>BufferGoto 1<CR>", "Buffer 1" },
	["2"] = { "<Cmd>BufferGoto 2<CR>", "Buffer 2" },
	["3"] = { "<Cmd>BufferGoto 3<CR>", "Buffer 3" },
	["4"] = { "<Cmd>BufferGoto 4<CR>", "Buffer 4" },
	["5"] = { "<Cmd>BufferGoto 5<CR>", "Buffer 5" },
	["6"] = { "<Cmd>BufferGoto 6<CR>", "Buffer 6" },
	["7"] = { "<Cmd>BufferGoto 7<CR>", "Buffer 7" },
	["8"] = { "<Cmd>BufferGoto 8<CR>", "Buffer 8" },
	["9"] = { "<Cmd>BufferGoto 9<CR>", "Buffer 9" },
}
which_key["c"] = { "<Cmd>Telescope commands<CR>", "Commands" }
which_key["d"] = {
	name = "Diagnostics...",
	d = {
		"<Cmd>Telescope lsp_document_diagnostics<CR>",
		"Telescope (document)",
	},
	j = {
		"<Cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = lvim.lsp.popup_border}})<CR>",
		"Next",
	},
	k = {
		"<Cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = lvim.lsp.popup_border}})<CR>",
		"Previous",
	},
	w = {
		"<Cmd>Telescope lsp_document_diagnostics<CR>",
		"Telescope (workspace)",
	},
}
which_key["e"] = {
	name = "Definitions...",
	e = {
		"<Cmd>Telescope lsp_definitions<CR>",
		"Telescope [default]",
	},
	l = { "<Cmd>Trouble lsp_definitions<CR>", "List" },
	p = { "<Cmd>lua require('lvim.lsp.peek').Peek('definition')<CR>", "Peek" },
}
which_key["f"] = {
	name = "Find...",
	b = { "<Cmd>Telescope file_browser<CR>", "Browser" },
	d = {
		"<Cmd>Telescope lsp_workspace_diagnostics<CR>",
		"Diagnostics",
	},
	f = { "<Cmd>Telescope find_files<CR>", "Files [default]" },
	l = { "<Cmd>Telescope loclist<CR>", "Location list" },
	o = { "<Cmd>Telescope oldfiles<CR>", "Old files" },
	p = { "<Cmd>Telescope projects<CR>", "Project" },
	s = {
		"<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>",
		"Symbols",
	},
	t = { "<Cmd>Telescope live_grep<CR>", "Text" },
	h = {
		name = "History...",
		c = { "<Cmd>Telescope command_history<CR>", "Command history" },
		s = { "<Cmd>Telescope search_history<CR>", "Search history" },
	},
}
which_key["g"] = {
	name = "Git",
	a = { "<Cmd>Gitsigns stage_hunk<CR>", "Add hunk" },
	b = { "<Cmd>Telescope git_branches<CR>", "Branches (Telescope)" },
	c = { "<Cmd>Git commit<CR>", "Commit" },
	d = { "<Cmd>Gitsigns diffthis HEAD<CR>", "Diff" },
	f = { "<Cmd>Telescope git_files<CR>", "Files (Telescope)" },
	j = { "<Cmd>Gitsigns next_hunk<CR>", "Next hunk" },
	k = { "<Cmd>Gitsigns prev_hunk<CR>", "Previous hunk" },
	l = { "<Cmd>Gitsigns setloclist<CR>", "Location list" },
	p = { "<Cmd>Gitsigns preview_hunk<CR>", "Preview hunk" },
	r = { "<Cmd>Gitsigns reset_hunk<CR>", "Reset hunk" },
	R = { "<Cmd>Gitsigns reset_buffer<CR>", "Reset buffer" },
	s = { "<Cmd>Telescope git_status<CR>", "Git status (Telescope)" },
	u = { "<Cmd>Gitsigns undo_stage_hunk<CR>", "Undo add hunk" },
	g = {
		name = "Fugitive...",
		p = { "<Cmd>Git push<CR>", "Push" },
	},
}
which_key["h"] = {
	name = "Help/settings...",
	a = { "<Cmd>Telescope autocommands<CR>", "Autocommands" },
	c = { "<Cmd>Telescope colorscheme<CR>", "Color schemes" },
	f = { "<Cmd>Telescope filetypes<CR>", "File types" },
	h = { "<Cmd>Telescope help_tags<CR>", "Help tags" },
	m = { "<Cmd>Telescope man_pages<CR>", "Man pages" },
	k = { "<Cmd>Telescope keymaps<CR>", "Key maps" },
	s = { "<Cmd>Telescope spell_suggest<CR>", "Spell suggest" },
	v = { "<Cmd>Telescope vim_options<CR>", "Vim options" },
	i = {
		name = "Info...",
		l = { "<Cmd>LspInfo<CR>", "LSP info" },
		L = { "<Cmd>LspInstallerInfo<CR>", "LSP installer info" },
		t = { "<Cmd>TSConfigInfo<CR>", "Treesitter config info" },
	},
}
which_key["j"] = { "<Cmd>Telescope jumplist<CR>", "Jump list" }
which_key["l"] = {
	name = "List...",
	d = {
		"<Cmd>Trouble lsp_document_diagnostics<CR>",
		"Diagnostics (document)",
	},
	f = { "<Cmd>Trouble lsp_definitions<CR>", "Definitions" },
	i = { "<Cmd>Trouble lsp_implementations<CR>", "Implementations" },
	l = { "<Cmd>Trouble loclist<CR>", "Location List" },
	q = { "<Cmd>Trouble quickfix<CR>", "Quickfix" },
	r = { "<Cmd>Trouble lsp_references<CR>", "References" },
	w = {
		"<Cmd>Trouble lsp_workspace_diagnostics<CR>",
		"Diagnostics (workspace)",
	},
}
which_key["m"] = { "<Cmd>Telescope marks<CR>", "Marks" }
which_key["p"] = { "<Cmd>Telescope registers<CR>", "Paste" }
which_key["q"] = { "<Cmd>Telescope quickfix<CR>", "Quickfix" }
which_key["r"] = { "<Cmd>Telescope lsp_references<CR>", "References" }
which_key["s"] = { "<Cmd>Telescope lsp_document_symbols<CR>", "Symbols" }
which_key["t"] = {
	"<Cmd>Telescope current_buffer_fuzzy_find<CR>",
	"Buffer fuzzy find [default]",
}
which_key["w"] = {
	name = "+Windows",
	h = { "<Cmd>set nosplitright<CR><Cmd>vsplit<CR>", "Split to left" },
	j = { "<Cmd>set splitbelow<CR><Cmd>split<CR>", "Split below" },
	k = { "<Cmd>set nosplitbelow<CR><Cmd>split<CR>", "Split above" },
	l = { "<Cmd>set splitright<CR><Cmd>vsplit<CR>", "Split to right" },
}
which_key["P"] = {
	name = "Packer",
	c = { "<Cmd>PackerCompile<CR>", "Compile" },
	i = { "<Cmd>PackerInstall<CR>", "Install" },
	r = {
		"<Cmd>lua require('lvim.plugin-loader').recompile()<CR>",
		"Re-compile",
	},
	s = { "<Cmd>PackerSync<CR>", "Sync" },
	S = { "<Cmd>PackerStatus<CR>", "Status" },
	u = { "<Cmd>PackerUpdate<CR>", "Update" },
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

--------------------------------------------------------------------------------
-- LunarVim
--------------------------------------------------------------------------------
-- format on save
lvim.format_on_save = true

-- logging
lvim.log.level = "warn"

-- colorscheme
lvim.colorscheme = "onedarker"

-- autocommands
lvim.autocommands.custom_groups = {
	-- keep windows equally sized
	{ "VimResized", "*", "wincmd =" },
}

-- telescope
lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 40
lvim.builtin.telescope.defaults.layout_config.width = 0.98
lvim.builtin.telescope.defaults.layout_strategy = "vertical"
lvim.builtin.telescope.pickers = {
	find_files = { find_command = { "rg", "--files", "--hidden" } },
}

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
-- plugins
--------------------------------------------------------------------------------
-- dashboard
lvim.builtin.dashboard.custom_section = {
	a = {
		description = { "  New File           " },
		command = "DashboardNewFile",
	},
	b = {
		description = { "  Find File          " },
		command = "Telescope find_files",
	},
	c = {
		description = { "  Ranger             " },
		command = "RnvimrToggle",
	},
	d = {
		description = { "  Recently Used Files" },
		command = "Telescope oldfiles",
	},
	e = {
		description = { "  Find Word          " },
		command = "Telescope live_grep",
	},
	f = {
		description = { "  Marks              " },
		command = "Telescope marks",
	},
	g = {
		description = { "  Settings           " },
		command = ":e ~/.config/lvim/config.lua",
	},
	h = {
		description = { "  Git Status         " },
		command = "Telescope git_status",
	},
	i = {
		description = { "  File Browser       " },
		command = "Telescope file_browser",
	},
	-- i = {description = {"  Load Last Session  "}, command = "SessionLoad"},
}

-- nvim-tree
lvim.builtin.nvimtree.active = false

-- extra plugins
lvim.plugins = {

	---------------
	-- debugging --
	---------------
	-- python
	{ "mfussenegger/nvim-dap-python", event = "BufRead", ft = "python" },

	-- tests
	{ "vim-test/vim-test", event = "BufRead" },

	-------------
	-- editing --
	-------------
	-- alignment
	{ "junegunn/vim-easy-align", event = "BufRead" },

	-- better escape
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = { "jj", "jk", "kj", "kk" },
			})
		end,
	},

	-- close end-* structures
	{ "tpope/vim-endwise", event = "BufRead" },

	-- expand/shrink visual selection
	{ "terryma/vim-expand-region", event = "BufRead" },

	-- find and replace
	{ "windwp/nvim-spectre", event = "BufRead" },

	-- increment/decrement
	{
		"monaqa/dial.nvim",
		config = function()
			vim.cmd("source ~/.config/lvim/user/dial.lua")
		end,
		event = "BufRead",
	},

	-- multiple cursors
	{ "mg979/vim-visual-multi", event = "BufRead" },

	-- narrow region
	{ "chrisbra/nrrwrgn", event = "BufRead" },

	-- quoting and parenthesizing
	{ "tpope/vim-surround", event = "BufRead" },

	-- switch between single and multi-line code
	{ "andrewradev/splitjoin.vim", event = "BufRead" },

	-- text exchange
	{ "tommcdo/vim-exchange", event = "BufRead" },

	-- undo history visualizer
	{ "mbbill/undotree", event = "BufRead" },

	-----------------------
	-- files and folders --
	-----------------------
	-- auto-save
	{
		"pocco81/autosave.nvim",
		config = function()
			local autosave = require("autosave")
			lvim.keys.normal_mode["<Leader>as"] = "<Cmd>ASToggle<CR>"
			autosave.setup({
				enabled = false,
				execution_message = "autosaved at : " .. vim.fn.strftime("%H:%M:%S"),
				events = { "InsertLeave", "TextChanged" },
				conditions = {
					exists = true,
					filetype_is_not = {},
					modifiable = true,
				},
				clean_command_line_interval = 2500,
				on_off_commands = true,
				write_all_buffers = false,
			})
		end,
		event = "BufRead",
	},

	-- missing directories
	{
		"jghauser/mkdir.nvim",
		config = function()
			require("mkdir")
		end,
		event = "BufWritePre",
	},

	---------
	-- git --
	---------
	-- commit browser
	{ "junegunn/gv.vim", event = "BufRead" },

	-- conflict markers
	{ "rhysd/conflict-marker.vim", event = "BufRead" },

	-- fugitive
	{ "tpope/vim-fugitive", event = "BufRead" },

	-- git blame
	{
		"f-person/git-blame.nvim",
		event = "BufRead",
		setup = function()
			vim.g["gitblame_enabled"] = 0
		end,
	},

	-- git diff in a single tabpage
	{ "sindrets/diffview.nvim", event = "BufRead" },

	-- mergetool
	{
		"samoshkin/vim-mergetool",
		config = function()
			vim.g.mergetool_layout = "LmR"
			vim.g.mergetool_prefer_revisionn = "unmodified"
		end,
		event = "BufRead",
	},

	-- neogit
	{
		"TimUntersberger/neogit",
		config = function()
			require("neogit").setup({ disable_commit_confirmation = true })
		end,
		event = "BufRead",
		requires = "nvim-lua/plenary.nvim",
	},

	---------
	-- LSP --
	---------
	-- code action lightbulb
	{ "kosayoda/nvim-lightbulb", event = "BufRead" },

	-- diagnostics
	{ "folke/trouble.nvim", cmd = "TroubleToggle", event = "BufRead" },

	-- symbols outline
	{ "simrat39/symbols-outline.nvim", event = "BufRead" },

	--------------
	-- markdown --
	--------------
	-- markdown preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = "MarkdownPreview",
		event = "BufRead",
		ft = { "markdown" },
		run = "cd app && yarn install",
	},

	-------------------
	-- miscellaneous --
	-------------------
	-- pairs of bracket mappings
	{ "tpope/vim-unimpaired", event = "BufRead" },

	-- repeat plugin actions
	{ "tpope/vim-repeat", event = "BufRead" },

	----------------
	-- navigation --
	----------------
	-- accelerated up/down
	{
		"rhysd/accelerated-jk",
		config = function()
			local settings = { noremap = false, silent = true }
			vim.api.nvim_set_keymap("n", "j", "<Plug>(accelerated_jk_gj)", settings)
			vim.api.nvim_set_keymap("n", "k", "<Plug>(accelerated_jk_gk)", settings)
		end,
		event = "BufRead",
	},

	-- last place
	{
		"ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup({})
		end,
		event = "BufRead",
	},

	-- paragraphs
	{ "justinmk/vim-ipmotion", event = "BufRead" },

	-- ranger
	{
		"kevinhwang91/rnvimr",
		cmd = "RnvimrToggle",
		config = function()
			vim.g.rnvimr_draw_border = 1
			vim.g.rnvimr_pick_enable = 1
			vim.g.rnvimr_bw_enable = 1
		end,
	},

	-- smooth scrolling
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup({
				-- All these keys will be mapped to their corresponding default scrolling animation
				mappings = {
					"<C-u>",
					"<C-d>",
					"<C-b>",
					"<C-f>",
					"<C-y>",
					"<C-e>",
					"zt",
					"zz",
					"zb",
				},
				hide_cursor = true, -- Hide cursor while scrolling
				stop_eof = true, -- Stop at <EOF> when scrolling downwards
				use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
				respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
				cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
				easing_function = "quadratic", -- Default easing function
				pre_hook = nil, -- Function to run before the scrolling animation starts
				post_hook = nil, -- Function to run after the scrolling animation ends
			})
		end,
		event = "BufRead",
	},

	-- sneak motion
	{ "ggandor/lightspeed.nvim", event = "BufRead" },

	-- vertical movement within a column
	{ "vim-utils/vim-vertical-move", event = "BufRead" },

	--------------
	-- quickfix --
	--------------
	-- better quick fix
	{
		"kevinhwang91/nvim-bqf",
		config = function()
			require("bqf").setup({
				auto_enable = true,
				preview = {
					win_height = 12,
					win_vheight = 12,
					delay_syntax = 80,
					border_chars = {
						"┃",
						"┃",
						"━",
						"━",
						"┏",
						"┓",
						"┗",
						"┛",
						"█",
					},
				},
				func_map = {
					vsplit = "",
					ptogglemode = "z,",
					stoggleup = "",
				},
				filter = {
					fzf = {
						action_for = { ["ctrl-s"] = "split" },
						extra_opts = {
							"--bind",
							"ctrl-o:toggle-all",
							"--prompt",
							"> ",
						},
					},
				},
			})
		end,
		event = { "BufRead", "BufNew" },
	},

	-- edit quickfix lists
	{ "olical/vim-enmasse", event = "BufRead" },

	---------------
	-- searching --
	---------------
	-- hlsearch lens
	{ "kevinhwang91/nvim-hlslens", event = "BufRead" },

	-- clear hlsearch when done
	{ "romainl/vim-cool", event = "BufRead" },

	-- start from a visual block
	{ "bronson/vim-visual-star-search", event = "BufRead" },

	---------------
	-- telescope --
	---------------
	-- projects
	{
		"nvim-telescope/telescope-project.nvim",
		config = function()
			vim.cmd([[packadd telescope.nvim]])
		end,
		event = "BufWinEnter",
	},

	------------------
	-- text objects --
	------------------
	-- entire buffer
	{
		"kana/vim-textobj-entire",
		event = "BufRead",
		requires = "kana/vim-textobj-user",
	},

	-- indents
	{ "michaeljsmith/vim-indent-object", event = "BufRead" },

	-- indent-levels
	{ "jeetsukumaran/vim-indentwise", event = "BufRead" },

	-- lines
	{ "wellle/line-targets.vim", event = "BufRead" },

	-- matching words
	{
		"andymass/vim-matchup",
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end,
		event = "BufRead",
	},

	-- matching quotes, backticks and pipe
	{ "airblade/vim-matchquote", event = "BufRead" },

	-- operate from cursor to beginning/end of text objects
	{ "tommcdo/vim-ninja-feet", event = "BufRead" },

	-- pair, quote, separator, argument, multi text
	{ "wellle/targets.vim", event = "BufRead" },

	-- union of quotes, parentheses, braces
	{
		"rhysd/vim-textobj-anyblock",
		event = "BufRead",
		requires = "kana/vim-textobj-user",
	},

	-- variable segments
	{
		"julian/vim-textobj-variable-segment",
		event = "BufRead",
		requires = "kana/vim-textobj-user",
	},

	-- word-based columns
	{ "coderifous/textobj-word-column.vim", event = "BufRead" },

	-----------
	-- theme --
	-----------
	{ "folke/tokyonight.nvim", event = "VimEnter" },

	----------
	-- tmux --
	----------
	-- tmux
	{ "christoomey/vim-tmux-navigator", event = "VimEnter" },

	----------------
	-- treesitter --
	----------------
	-- close/rename html tags
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
		event = "InsertEnter",
	},

	-- rainbow parentheses
	{ "p00f/nvim-ts-rainbow", event = "BufRead" },

	-- treesitter text objects
	{ "mfussenegger/nvim-ts-hint-textobject", event = "BufRead" },

	---------------
	-- utilities --
	---------------
	-- calendar
	{ "itchyny/calendar.vim", event = "BufRead" },

	-------------
	-- viewing --
	-------------
	-- absolute line numbers in inactive windows
	{ "jeffkreeftmeijer/vim-numbertoggle", event = "BufRead" },

	-- context
	{
		"romgrk/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup()
		end,
		event = "BufRead",
	},

	-- indentation guides
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			vim.g.indentLine_enabled = 1
			vim.g.indent_blankline_char = "▏"
			vim.g.indent_blankline_filetype_exclude = {
				"help",
				"terminal",
				"dashboard",
			}
			vim.g.indent_blankline_buftype_exclude = { "terminal" }
			vim.g.indent_blankline_show_trailing_blankline_indent = false
			vim.g.indent_blankline_show_first_indent_level = false
		end,
		event = "BufRead",
	},

	-- marks in gutter
	{ "kshenoy/vim-signature", event = "BufRead" },

	-- stabilize buffer content
	{
		"luukvbaal/stabilize.nvim",
		config = function()
			require("stabilize").setup()
		end,
		event = "BufRead",
	},

	-- syntax highlighting
	{ "sheerun/vim-polyglot", event = "BufRead" },

	-- split visual selection or text object
	{ "wellle/visual-split.vim", event = "BufRead" },

	-- window rearranger
	{ "sindrets/winshift.nvim", event = "BufRead" },

	-- window resizer
	{
		"simeji/winresizer",
		config = function()
			vim.g.winresizer_start_key = "Q"
			vim.g.winresizer_vert_resize = 5
		end,
		event = "BufRead",
	},
}
