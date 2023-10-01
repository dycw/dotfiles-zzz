return {
	"samoshkin/vim-mergetool",
	config = function()
		vim.g.mergetool_layout = "rml,b"
		vim.g.mergetool_prefer_revision = "unmodified"
	end,
}
