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
lvim.keys.normal_mode["<C-q>"] = ":q<CR>"

-------------------------------------------------------------------------------
-- lvim
-------------------------------------------------------------------------------
lvim.format_on_save.enabled = true

-------------------------------------------------------------------------------
-- plugins
-------------------------------------------------------------------------------
lvim.plugins = {
  -- editing: change word casing
  { "arthurxavierx/vim-caser" },

  -- editing: find and replace
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },

  -- editing: multiple cursors
  { "mg979/vim-visual-multi" },


  -- editing: sort
  { "sqve/sort.nvim" },

  -- editing: surrounding delimiter pairs
  {

    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- editing: swap function arguments, list elements
  { "mizlan/iswap.nvim" },

  -- git: committia
  { "rhysd/committia.vim" },

  -- git: mergetool
  {
    "samoshkin/vim-mergetool",
    config = function()
      vim.g.mergetool_layout = "rml,b"
      vim.g.mergetool_prefer_revisionn = "unmodified"
    end,
  },

  -- navigation: f/t motions
  {
    "ggandor/flit.nvim",
    config = function()
      require("flit").setup()
    end,
    requires = { { "ggandor/leap.nvim" } },
  },

  -- navigation: harpoon
  {
    "theprimeagen/harpoon",
    config = function()
      require("telescope").load_extension("harpoon")
    end,
  },

  -- navigation: re-open files at last edit position
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup()
    end,
  },

  -- navigation: sneak motion
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
    end,
  },

  -- searching: hlsearch lens
  { "kevinhwang91/nvim-hlslens" },

  -- searching: clear hlsearch when done
  { "romainl/vim-cool" },

  -- text objects: matching quotes, backticks and pipe
  { "airblade/vim-matchquote" },

  -- text objects: pair, quote, separator, argument, multi text
  { "wellle/targets.vim" },

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
}

-------------------------------------------------------------------------------
-- whichkey
-------------------------------------------------------------------------------
-- general

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

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

-- Additional Plugins
-- lvim.plugins = {
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
--
-------------------------------------------------------------------------------
-- telescope
-------------------------------------------------------------------------------
lvim.builtin.telescope.defaults.layout_config.width = 0.95
lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 40
