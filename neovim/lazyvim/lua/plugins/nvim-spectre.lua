return {
	"windwp/nvim-spectre",
	config = function()
		require("spectre").setup({ live_update = true })
	end,
}
