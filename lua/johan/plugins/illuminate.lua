return {
	"RRethy/vim-illuminate",
	config = function()
		vim.keymap.set("n", "<a-p>", function()
			require("illuminate").goto_next_reference()
		end)
		vim.keymap.set("n", "<a-n>", function()
			require("illuminate").goto_prev_reference()
		end)
	end,
}
