-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
	local keys = require("lazy.core.handler").handlers.keys
	---@cast keys LazyKeysHandler
	-- do not create the keymap if a lazy keys handler exists
	if not keys.active[keys.parse({ lhs, mode = mode }).id] then
		opts = opts or {}
		opts.silent = opts.silent ~= false
		if opts.remap and not vim.g.vscode then
			opts.remap = nil
		end
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

-------------------------------------------------------------------------------
-- command mode
map({ "n", "v" }, "<CR>", ":", { desc = "Command mode" })

-- marks
local prefixes = "m'"
local letters = "abcdefghijklmnopqrstuvwxyz"
for i = 1, #prefixes do
	local prefix = prefixes:sub(i, i)
	for j = 1, #letters do
		local lower_letter = letters:sub(j, j)
		local upper_letter = string.upper(lower_letter)
		map({ "n", "v" }, prefix .. lower_letter, prefix .. upper_letter, { desc = "Mark " .. upper_letter })
	end
end

-- navigation
map("i", "<C-h>", "<Left>", { desc = "Left" })
map("i", "<C-j>", "<Down>", { desc = "Down" })
map("i", "<C-k>", "<Up>", { desc = "Up" })
map("i", "<C-l>", "<Right>", { desc = "Right" })

-- paste
map({ "n", "v", "i" }, "<F2>", "<Cmd>set invpaste paste?<CR>", { desc = "Toggle paste mode" })

-- quickfix
map("n", "]", "<Cmd>cnext<CR>", { desc = "Next in list" })
map("n", "[", "<Cmd>cprev<CR>", { desc = "Prev in list" })

-- quit
map("n", "<C-q>", "<Cmd>q<CR>", { desc = "Quit" })

-- windows
map("n", "<leader>w\\", "<C-W>v", { desc = "Split window right", remap = true })
map("n", "<leader>\\", "<C-W>v", { desc = "Split window right", remap = true })
