return {
	"okuuva/auto-save.nvim",
	config = function()
		require("auto-save").setup()
	end,
	keys = {
		{ "<Leader>a", "<Cmd>ASToggle<CR>", desc = "Toggle AutoSave" },
	},
}
