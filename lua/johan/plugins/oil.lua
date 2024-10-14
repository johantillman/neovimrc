return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup({
			-- float = {
			-- 	padding = 20,
			-- },
		})
		vim.keymap.set("n", "ee", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
	end,
}
