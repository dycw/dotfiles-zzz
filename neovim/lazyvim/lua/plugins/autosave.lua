return {
	"okuuva/auto-save.nvim",
	config = function()
		vim.keymap.set("n", "<Leader>a", "<Cmd>ASToggle<CR>", { noremap = true })
		require("auto-save").setup()
	end,
}
