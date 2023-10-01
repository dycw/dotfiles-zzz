return {
	"nvim-pack/nvim-spectre",
	config = function()
		require("spectre").setup({ live_update = true })
	end,
}
