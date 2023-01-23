-------------------------------------------------------------------------------
-- vim
-------------------------------------------------------------------------------
vim.opt.colorcolumn = "80"
vim.opt.mouse = ""
vim.opt.relativenumber = true
vim.opt.gdefault = true
vim.opt.wrap = true

-------------------------------------------------------------------------------
-- key bindings
-------------------------------------------------------------------------------
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
lvim.keys.normal_mode["<C-q>"] =
	":lua require('lvim.utils.functions').smart_quit()<CR>"

-------------------------------------------------------------------------------
-- formatters
-------------------------------------------------------------------------------
require("lvim.lsp.null-ls.formatters").setup({
	-- go
	{ exe = "gofumpt", args = { "-l", "-w", "-extra" }, filetypes = { "go" } },
	-- lua
	{ exe = "stylua", filetypes = { "lua" } },
	-- python
	{ exe = "black", filetypes = { "python" } },
	{ exe = "ruff", filetypes = { "python" } },
	-- sh
	{ exe = "shfmt", filetypes = { "sh" } },
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

-------------------------------------------------------------------------------
-- linters
-------------------------------------------------------------------------------
require("lvim.lsp.null-ls.linters").setup({
	-- javascript
	{ exe = "eslint", filetypes = { "javascript", "javascriptreact" } },
	-- lua
	{ exe = "luacheck", filetypes = { "lua" } },
	-- python
	{ exe = "ruff", filetypes = { "python" } },
	-- sh
	{ exe = "shellcheck", filetypes = { "sh" } },
})

-------------------------------------------------------------------------------
-- LSP
-------------------------------------------------------------------------------
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"go",
	"json",
	"haskell",
	"lua",
	"python",
	"rust",
	"yaml",
}

-------------------------------------------------------------------------------
-- lvim
-------------------------------------------------------------------------------
lvim.format_on_save.enabled = true
lvim.reload_config_on_save = false

-------------------------------------------------------------------------------
-- nvim tree
-------------------------------------------------------------------------------
lvim.builtin.nvimtree.setup.git.ignore = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-------------------------------------------------------------------------------
-- plugins
-------------------------------------------------------------------------------
lvim.plugins = {
	-- editing: better escape
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = { "jj", "jk", "kj", "kk" },
			})
		end,
		event = { "BufRead", "BufNew" },
	},

	-- editing: change word casing
	{
		"arthurxavierx/vim-caser",
		event = { "BufRead", "BufNew" },
	},

	-- editing: find and replace
	{
		"windwp/nvim-spectre",
		config = function()
			require("spectre").setup({ live_update = true })
		end,
		event = { "BufRead", "BufNew" },
	},

	-- editing: missing directories
	{
		"jghauser/mkdir.nvim",
		config = function()
			require("mkdir")
		end,
		event = { "BufRead", "BufNew" },
	},

	-- editing: multiple cursors
	{
		"mg979/vim-visual-multi",
		event = { "BufRead", "BufNew" },
	},

	-- editing: pasting
	{
		"conradirwin/vim-bracketed-paste",
		event = { "BufRead", "BufNew" },
	},

	-- editing: signatures
	{
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").on_attach()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- editing: sort
	{
		"sqve/sort.nvim",
		event = { "BufRead", "BufNew" },
	},

	-- editing: surrounding delimiter pairs
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- editing: swap function arguments, list elements
	{
		"mizlan/iswap.nvim",
		event = { "BufRead", "BufNew" },
	},

	-- git: mergetool
	{
		"samoshkin/vim-mergetool",
		config = function()
			vim.g.mergetool_layout = "rml,b"
			vim.g.mergetool_prefer_revisionn = "unmodified"
		end,
		event = { "BufRead", "BufNew" },
	},

	-- git: neogit
	{
		"timuntersberger/neogit",
		config = function()
			require("neogit").setup({
				sections = {
					recent = { folded = false },
					unstaged = { folded = false },
					staged = { folded = false },
					untracked = { folded = false },
					stashes = { folded = true },
					unpulled = { folded = true },
					unmerged = { folded = false },
				},
			})
		end,
		event = { "BufRead", "BufNew" },
		requires = { "nvim-lua/plenary.nvim" },
	},

	-- LSP: trouble
	{
		"folke/trouble.nvim",
		event = { "BufRead", "BufNew" },
		cmd = "TroubleToggle",
	},

	-- navigation: f/t motions
	{
		"ggandor/flit.nvim",
		config = function()
			require("flit").setup()
		end,
		event = { "BufRead", "BufNew" },
		requires = { "ggandor/leap.nvim" },
	},

	-- navigation: harpoon
	{
		"theprimeagen/harpoon",
		config = function()
			require("telescope").load_extension("harpoon")
		end,
		event = { "BufRead", "BufNew" },
	},

	-- navigation: re-open files at last edit position
	{
		"ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- navigation: root
	{
		"ahmedkhalf/lsp-rooter.nvim",
		config = function()
			require("lsp-rooter").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- navigation: sneak motion
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- navigation: symbols
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- quick fix
	{
		"kevinhwang91/nvim-bqf",
		config = function()
			require("bqf").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- searching: hlsearch lens
	{
		"kevinhwang91/nvim-hlslens",
		config = function()
			require("hlslens").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- searching: clear hlsearch when done
	{
		"romainl/vim-cool",
		event = { "BufRead", "BufNew" },
	},

	-- text objects: matching quotes, backticks and pipe
	{
		"airblade/vim-matchquote",
		event = { "BufRead", "BufNew" },
	},

	-- text objects: pair, quote, separator, argument, multi text
	{
		"wellle/targets.vim",
		event = { "BufRead", "BufNew" },
	},

	-- tmux
	{
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- viewing: absolute line numbers in inactive windows
	{
		"jeffkreeftmeijer/vim-numbertoggle",
		event = { "BufRead", "BufNew" },
	},

	-- viewing: context
	{
		"romgrk/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup()
		end,
		event = { "BufRead", "BufNew" },
	},
}

-------------------------------------------------------------------------------
-- whichkey
-------------------------------------------------------------------------------
lvim.builtin.which_key.mappings = {
	["b"] = {
		name = "Buffers",
		["c"] = { ":BufferKill<CR>", "Kill" },
		["j"] = { ":BufferLineCycleNext<CR>", "Next" },
		["k"] = { ":BufferLineCyclePrev<CR>", "Previous" },
		["m"] = {
			name = "Move",
			["j"] = { ":BufferLineMoveNext<CR>", "Next" },
			["k"] = { ":BufferLineMovePrev<CR>", "Previous" },
		},
		["p"] = { ":BufferLinePick<CR>", "Pick" },
		["t"] = { ":Telescope buffers<CR>", "Telescope" },
	},
	["c"] = { ":Telescope commands<CR>", "Commands" },
	["d"] = {
		name = "Debug",
		b = { ":lua require('dap').step_back()<CR>", "Step Back" },
		c = { ":lua require('dap').continue()<CR>", "Continue" },
		C = { ":lua require('dap').run_to_cursor()<CR>", "Run To Cursor" },
		d = { ":lua require('dap').disconnect()<CR>", "Disconnect" },
		g = { ":lua require('dap').session()<CR>", "Get Session" },
		i = { ":lua require('dap').step_into()<CR>", "Step Into" },
		o = { ":lua require('dap').step_over()<CR>", "Step Over" },
		p = { ":lua require('dap').pause()<CR>", "Pause" },
		q = { ":lua require('dap').close()<CR>", "Quit" },
		r = { ":lua require('dap').repl.toggle()<CR>", "Toggle Repl" },
		s = { ":lua require('dap').continue()<CR>", "Start" },
		t = {
			":lua require('dap').toggle_breakpoint()<CR>",
			"Toggle Breakpoint",
		},
		u = { ":lua require('dap').step_out()<CR>", "Step Out" },
		U = { ":lua require'dapui'.toggle({reset = true})<CR>", "Toggle UI" },
	},
	["e"] = { ":NvimTreeToggle<CR>", "Explorer" },
	["f"] = {
		name = "Files",
		["f"] = { ":Telescope find_files<CR>", "Find" },
		["g"] = { ":Telescope git_files<CR>", "Git" },
		["o"] = { ":Telescope oldfiles<CR>", "Old" },
	},
	["g"] = {
		name = "git",
		["b"] = { ":Telescope git_bcommits<CR>", "Bcommits" },
		["c"] = { ":Telescope git_commits<CR>", "Commit" },
		["d"] = { ":Gitsigns diffthis HEAD<CR>", "Diff" },
		["j"] = {
			":lua require('gitsigns').next_hunk({navigation_message = false})<CR>",
			"Next hunk",
		},
		["k"] = {
			":lua require('gitsigns').prev_hunk({navigation_message = false})<CR>",
			"Previous hunk",
		},
		["s"] = { ":Telescope git_status<CR>", "Status" },
	},
	["l"] = {
		name = "LSP",
		["a"] = { ":lua vim.lsp.buf.code_action()<CR>", "Code Action" },
		["d"] = {
			":Telescope diagnostics bufnr=0 theme=get_ivy<CR>",
			"Buffer Diagnostics",
		},
		["f"] = { require("lvim.lsp.utils").format, "Format" },
		["i"] = { ":LspInfo<CR>", "Info" },
		["I"] = { ":Mason<CR>", "Mason Info" },
		["j"] = { vim.diagnostic.goto_next, "Next Diagnostic" },
		["k"] = { vim.diagnostic.goto_prev, "Prev Diagnostic" },
		["l"] = { vim.lsp.codelens.run, "CodeLens Action" },
		["q"] = { vim.diagnostic.setloclist, "Quickfix" },
		["r"] = { vim.lsp.buf.rename, "Rename" },
	},
	["n"] = { ":Neogit<CR>", "Neogit" },
	["P"] = { ":PackerSync<CR>", "PackerSync" },
	["r"] = {
		":lua require('spectre').open_file_search()<CR>",
		"Spectre (file)",
	},
	["R"] = { ":lua require('spectre').open()<CR>", "Spectre (project)" },
	["s"] = {
		name = "Search",
		["d"] = { ":Telescope diagnostics<CR>", "Diagnostics" },
		["g"] = { ":Telescope grep_string<CR>", "Grep (string)" },
		["h"] = { ":Telescope command_history<CR>", "History (command)" },
		["l"] = { ":Telescope live_grep<CR>", "Grep (live)" },
		["m"] = { ":Telescope marks<CR>", "Marks" },
		["q"] = { ":Telescope quickfix<CR>", "Quickfix" },
		["r"] = { ":Telescope registers<CR>", "Registers" },
		["s"] = {
			":Telescope lsp_document_symbols<CR>",
			"Symbols (document)",
		},
		["y"] = {
			":Telescope lsp_dynamic_workspace_symbols<CR>",
			"Symbols (workspace)",
		},
		["/"] = { ":Telescope search_history<CR>", "History (search)" },
	},
	["t"] = {
		name = "Trouble",
		["d"] = {
			":Trouble document_diagnostics<CR>",
			"Diagnostics (document)",
		},
		["q"] = { ":Trouble quickfix<CR>", "Quickfix" },
		["r"] = { ":Trouble lsp_references<CR>", "References" },
		["t"] = { ":TroubleToggle<CR>", "Toggle" },
		["w"] = {
			":Trouble workspace_diagnostics<CR>",
			"Diagnostics (workspace)",
		},
	},
	["T"] = { ":Telescope<CR>", "Telescope" },
	["w"] = {
		name = "Window",
		["h"] = { ":set nosplitright<CR><Cmd>vsplit<CR>", "Left" },
		["j"] = { ":set splitbelow<CR><Cmd>split<CR>", "Down" },
		["k"] = { ":set nosplitbelow<CR><Cmd>split<CR>", "Up" },
		["l"] = { ":set splitright<CR><Cmd>vsplit<CR>", "Right" },
	},
	["-"] = { ":split<CR>", "Window (split)" },
	["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle" },
	["\\"] = { ":vsplit<CR>", "Window (vsplit)" },
}

lvim.builtin.which_key.vmappings = {
	["c"] = { ":Telescope commands<CR>", "Commands" },
	["r"] = { ":lua require('spectre').open_visual()<CR>", "Spectre" },
	["s"] = { ":Sort<CR>", "Sort" },
	["S"] = { ":Sort n<CR>", "Sort (numbers)" },
	["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle" },
}
