-- luacheck: ignore 112

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

-- ex-mode
lvim.keys.normal_mode["Q"] = "<Nop>"

-- marks
local prefixes = "m'"
local letters = "abcdefghijklmnopqrstuvwxyz"
for i = 1, #prefixes do
	for j = 1, #letters do
		local prefix = prefixes:sub(i, i)
		local lower_letter = letters:sub(j, j)
		local upper_letter = string.upper(lower_letter)
		lvim.keys.normal_mode[prefix .. lower_letter] = prefix .. upper_letter
	end
end

-- navigation
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"

-- paste
lvim.keys.normal_mode["<F2>"] = "<Cmd>set invpaste paste?<CR>"
lvim.keys.insert_mode["<F2>"] = "<C-o><Cmd>set invpaste paste?<CR>"

-- quickfix
lvim.keys.normal_mode["]"] = "<Cmd>cnext<CR>"
lvim.keys.normal_mode["["] = "<Cmd>cprev<CR>"

-- quit
lvim.keys.normal_mode["<C-q>"] = ":confirm q<CR>"

-- save
lvim.keys.normal_mode["<C-s>"] = "<Cmd>w<CR>"
lvim.keys.visual_mode["<C-s>"] = "<Esc><Cmd>w<CR>"
lvim.keys.insert_mode["<C-s>"] = "<Esc><Cmd>w<CR>"

-------------------------------------------------------------------------------
-- key bindings (leader)
-------------------------------------------------------------------------------
-- auto-save
lvim.keys.normal_mode["<Leader>a"] = "<Cmd>ASToggle<CR>"

-- buffers
lvim.keys.normal_mode["<Leader>b"] = "<Cmd>Telescope buffers<CR>"
lvim.keys.normal_mode["<Leader>bd"] = "<Cmd>BDelete this<CR>"
lvim.keys.normal_mode["<Leader>bD"] = "<Cmd>BDelete other<CR>"
lvim.keys.normal_mode["<Leader>bj"] = "<Cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<Leader>bk"] = "<Cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<Leader>bp"] = "<Cmd>BufferLinePick<CR>"

-- commands
lvim.keys.normal_mode["<Leader>c"] = "<Cmd>Telescope commands<CR>"
lvim.keys.normal_mode["<Leader>ch"] = "<Cmd>Telescope command_history<CR>"
lvim.keys.visual_mode["<Leader>c"] = "<Cmd>Telescope commands<CR>"

-- comment
lvim.keys.normal_mode["<Leader>/"] = "<Plug>(comment_toggle_linewise_current)"
lvim.keys.visual_mode["<Leader>/"] = "<Plug>(comment_toggle_linewise_visual)"

-- diagnostics
lvim.keys.normal_mode["<Leader>d"] = "<Cmd>Telescope diagnostics<CR>"
lvim.keys.normal_mode["<Leader>dj"] = "<Cmd>lua vim.diagnostic.goto_next()<CR>"
lvim.keys.normal_mode["<Leader>dk"] = "<Cmd>lua vim.diagnostic.goto_prev()<CR>"
lvim.keys.normal_mode["<Leader>dd"] = "<Cmd>TroubleToggle document_diagnostics<CR>"
lvim.keys.normal_mode["<Leader>wd"] = "<Cmd>TroubleToggle workspace_diagnostics<CR>"

-- files
lvim.keys.normal_mode["<Leader>f"] = "<Cmd>Telescope find_files<CR>"
lvim.keys.normal_mode["<Leader>gf"] = "<Cmd>Telescope git_files<CR>"
lvim.keys.normal_mode["<Leader>gs"] = "<Cmd>Telescope git_status<CR>"
lvim.keys.normal_mode["<Leader>of"] = "<Cmd>Telescope oldfiles<CR>"

-- git
lvim.keys.normal_mode["<Leader>gj"] = "<Cmd>lua require('gitsigns').next_hunk({navigation_message = false})<CR>"
lvim.keys.normal_mode["<Leader>gk"] = "<Cmd>lua require('gitsigns').prev_hunk({navigation_message = false})<CR>"

-- iswap
lvim.keys.normal_mode["<Leader>i"] = "<Cmd>ISwapWith<CR>"
lvim.keys.normal_mode["<Leader>is"] = "<Cmd>ISwap<CR>"

-- jump list
lvim.keys.normal_mode["<Leader>j"] = "<Cmd>Telescope jumplist<CR>"

-- lazy
lvim.keys.normal_mode["<Leader>lu"] = "<Cmd>Lazy update<CR>"

-- LSP
lvim.keys.normal_mode["<Leader>r"] = "<Cmd>Telescope lsp_references<CR>"
lvim.keys.normal_mode["<Leader>lr"] = "<Cmd>TroubleToggle lsp_references<CR>"
lvim.keys.normal_mode["<Leader>rn"] = {
	function()
		return ":IncRename " .. vim.fn.expand("<cword>")
	end,
	{ expr = true, noremap = true },
}
lvim.keys.normal_mode["<Leader>lR"] = "<Cmd>LspRestart<CR>"

-- marks
lvim.keys.normal_mode["<Leader>m"] = "<Cmd>Telescope marks<CR>"

-- mergetool
lvim.keys.normal_mode["<Leader>mj"] = "<Cmd>MergetoolDiffExchangeLeft<CR>"
lvim.keys.normal_mode["<Leader>mk"] = "<Cmd>MergetoolDiffExchangeRight<CR>"
lvim.keys.normal_mode["<Leader>ml"] = "<Cmd>MergetoolPreferLocal<CR>"
lvim.keys.normal_mode["<Leader>mr"] = "<Cmd>MergetoolPreferRemote<CR>"
lvim.keys.normal_mode["<Leader>mq"] = "<Cmd>MergetoolStop<CR>"

-- nvim tree
lvim.keys.normal_mode["<Leader>e"] = "<Cmd>NvimTreeToggle<CR>"

-- quickfix
lvim.keys.normal_mode["<Leader>q"] = "<Cmd>Telescope quickfix<CR>"
lvim.keys.normal_mode["<Leader>lq"] = "<Cmd>TroubleToggle quickfix<CR>"

-- search text
lvim.keys.normal_mode["<Leader>bf"] = "<Cmd>Telescope current_buffer_fuzzy_find<CR>"
lvim.keys.normal_mode["<Leader>gr"] = "<Cmd>Telescope grep_string<CR>"
lvim.keys.normal_mode["<Leader>lg"] = "<Cmd>Telescope live_grep<CR>"

-- sort
lvim.keys.normal_mode["<Leader>so"] = "<Cmd>Sort<CR>"
lvim.keys.normal_mode["<Leader>sn"] = "<Cmd>Sort n<CR>"
lvim.keys.visual_mode["<Leader>so"] = "<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["<Leader>sn"] = "<Esc><Cmd>Sort n<CR>"

-- spectre
lvim.keys.normal_mode["<Leader>sp"] = "<Cmd>lua require('spectre').open()<CR>"
lvim.keys.normal_mode["<Leader>sf"] = "<Cmd>lua require('spectre').open_file_search()<CR>"
lvim.keys.visual_mode["<Leader>sp"] = "<Esc><Cmd>lua require('spectre').open_visual()<CR>"
lvim.keys.visual_mode["<Leader>sf"] = "<Esc><Cmd>lua require('spectre').open_file_search({select_word=true})<CR>"

-- symbols
lvim.keys.normal_mode["<Leader>s"] = "<Cmd>Telescope lsp_document_symbols<CR>"
lvim.keys.normal_mode["<Leader>sy"] = "<Cmd>SymbolsOutline<CR>"
lvim.keys.normal_mode["<Leader>ws"] = "<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>"

-- telescope
lvim.keys.normal_mode["<Leader>te"] = "<Cmd>Telescope<CR>"
lvim.keys.visual_mode["<Leader>te"] = "<Esc><Cmd>Telescope<CR>"

-- trouble
lvim.keys.normal_mode["<Leader>t"] = "<Cmd>TroubleToggle<CR>"

-- windows
lvim.keys.normal_mode["<Leader>wh"] = "<Cmd>set nosplitright<CR><Cmd>vsplit<CR>"
lvim.keys.normal_mode["<Leader>wj"] = "<Cmd>set splitbelow<CR><Cmd>split<CR>"
lvim.keys.normal_mode["<Leader>wk"] = "<Cmd>set nosplitbelow<CR><Cmd>split<CR>"
lvim.keys.normal_mode["<Leader>wl"] = "<Cmd>set splitright<CR><Cmd>vsplit<CR>"
lvim.keys.normal_mode["<Leader>-"] = "<Cmd>split<CR>"
lvim.keys.normal_mode["<Leader>\\"] = "<Cmd>vsplit<CR>"

-------------------------------------------------------------------------------
-- formatters
-------------------------------------------------------------------------------
require("lvim.lsp.null-ls.formatters").setup({
	-- go
	{ name = "gofumpt", args = { "-l", "-w", "-extra" }, filetypes = { "go" } },
	-- lua
	{ name = "stylua", filetypes = { "lua" } },
	-- python
	{ name = "black", filetypes = { "python" } },
	-- sh
	{ name = "shfmt", filetypes = { "sh" } },
	-- prettier
	{
		name = "prettier",
		filetypes = {
			"css",
			"html",
			"htmldjango",
			"json",
			"markdown",
			"toml",
			"yaml",
		},
	},
	-- rome
	{
		name = "rome",
		filetypes = { "javascript", "javascriptreact", "typescript" },
	},
})

-------------------------------------------------------------------------------
-- linters
-------------------------------------------------------------------------------
require("lvim.lsp.null-ls.linters").setup({
	-- javascript
	{ name = "eslint", filetypes = { "javascript", "javascriptreact" } },
	-- lua
	{ name = "luacheck", filetypes = { "lua" } },
	-- python
	{ name = "ruff", filetypes = { "python" } },
	-- sh
	{ name = "shellcheck", filetypes = { "sh" } },
})

-------------------------------------------------------------------------------
-- LSP
-------------------------------------------------------------------------------
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"go",
	"haskell",
	"javascript",
	"json",
	"lua",
	"python",
	"rust",
	"swift",
	"tsx",
	"typescript",
	"vue",
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
lvim.builtin.dap.active = false
lvim.builtin.illuminate.active = false
lvim.builtin.lir.active = false
lvim.builtin.which_key.active = false
lvim.plugins = {
	-- auto save
	{
		"pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- better escape
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = { "jj", "jk", "kj", "kk" },
			})
		end,
		event = { "BufRead", "BufNew" },
	},

	-- better quick fix
	{
		"kevinhwang91/nvim-bqf",
		config = function()
			require("bqf").setup({ auto_resize_height = true })
		end,
		event = { "BufRead", "BufNew" },
	},

	-- caser
	{
		"arthurxavierx/vim-caser",
		event = { "BufRead", "BufNew" },
	},

	-- close buffers
	{
		"kazhala/close-buffers.nvim",
		event = { "BufRead", "BufNew" },
	},

	-- cool
	{
		"romainl/vim-cool",
		event = { "BufRead", "BufNew" },
	},

	-- dial
	{
		"monaqa/dial.nvim",
		config = function()
			vim.keymap.set("n", "<C-a>", require("dial.map").inc_normal(), { noremap = true })
			vim.keymap.set("n", "<C-x>", require("dial.map").dec_normal(), { noremap = true })
			vim.keymap.set("v", "<C-a>", require("dial.map").inc_visual(), { noremap = true })
			vim.keymap.set("v", "<C-x>", require("dial.map").dec_visual(), { noremap = true })
			vim.keymap.set("v", "g<C-a>", require("dial.map").inc_gvisual(), { noremap = true })
			vim.keymap.set("v", "g<C-x>", require("dial.map").dec_gvisual(), { noremap = true })
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
					augend.semver.alias.semver,
					augend.constant.new({
						elements = { "True", "False" },
						word = true,
						cyclic = true,
					}),
					augend.constant.new({
						elements = { "true", "false" },
						word = true,
						cyclic = true,
					}),
					augend.constant.new({
						elements = { "and", "or" },
						word = true,
						cyclic = true,
					}),
					augend.constant.new({
						elements = { "&&", "||" },
						word = true,
						cyclic = true,
					}),
				},
			})
		end,
		event = { "BufRead", "BufNew" },
	},

	-- flit
	{
		"ggandor/flit.nvim",
		config = function()
			require("flit").setup()
		end,
		dependencies = { "ggandor/leap.nvim" },
		event = { "BufRead", "BufNew" },
	},

	-- hlslens
	{
		"kevinhwang91/nvim-hlslens",
		config = function()
			require("hlslens").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- inc rename
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- iswap
	{
		"mizlan/iswap.nvim",
		event = { "BufRead", "BufNew" },
	},

	-- last place
	{
		"ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- leap
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").add_default_mappings()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- marks
	{
		"chentoast/marks.nvim",
		config = function()
			require("marks").setup()
		end,
	},

	-- match quote
	{
		"airblade/vim-matchquote",
		event = { "BufRead", "BufNew" },
	},

	-- mergetool
	{
		"samoshkin/vim-mergetool",
		config = function()
			vim.g.mergetool_layout = "rml,b"
			vim.g.mergetool_prefer_revision = "unmodified"
		end,
		event = { "BufRead", "BufNew" },
	},

	-- mkdir
	{
		"jghauser/mkdir.nvim",
		config = function()
			require("mkdir")
		end,
		event = { "BufRead", "BufNew" },
	},

	-- neorg
	{

		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		opts = {
			load = {
				["core.defaults"] = {},
				["core.norg.concealer"] = {},
				["core.norg.dirman"] = {
					config = {
						workspaces = {
							notes = "~/work/notes",
						},
					},
				},
			},
		},
		dependencies = { { "nvim-lua/plenary.nvim" } },
		event = { "BufRead", "BufNew" },
	},

	-- neoscroll
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup()
		end,
		event = "WinScrolled",
	},

	-- number toggle
	{
		"jeffkreeftmeijer/vim-numbertoggle",
		event = { "BufRead", "BufNew" },
	},

	-- signature
	{
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").on_attach()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- sort
	{
		"sqve/sort.nvim",
		event = { "BufRead", "BufNew" },
	},

	-- spectre
	{
		"windwp/nvim-spectre",
		config = function()
			require("spectre").setup({ live_update = true })
		end,
		event = { "BufRead", "BufNew" },
	},

	-- surround
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- symbols outline
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- targets
	{
		"wellle/targets.vim",
		event = { "BufRead", "BufNew" },
	},

	-- text objects
	{
		"chrisgrieser/nvim-various-textobjs",
		config = function()
			require("various-textobjs").setup({ useDefaultKeymaps = true })
		end,
		event = { "BufRead", "BufNew" },
	},

	-- tidy
	{
		"mcauley-penney/tidy.nvim",
		config = function()
			require("tidy").setup()
		end,
	},

	-- tmux
	{
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- treesitter context
	{
		"romgrk/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup()
		end,
		event = { "BufRead", "BufNew" },
	},

	-- trouble
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
		event = { "BufRead", "BufNew" },
	},

	-- visual multi
	{
		"mg979/vim-visual-multi",
		event = { "BufRead", "BufNew" },
	},
}
