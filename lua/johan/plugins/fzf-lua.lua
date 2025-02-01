return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	config = function()
		-- require("fzf-lua").setup({})
		vim.keymap.set("n", "<leader>ff", "<CMD>FzfLua files<CR>", { desc = "Find files" })
		vim.keymap.set("n", "<leader>fr", "<CMD>FzfLua oldfiles<CR>", { desc = "Recent files" })
		vim.keymap.set("n", "<leader>fg", "<CMD>FzfLua live_grep<CR>", { desc = "Grep/Fuzzy" })
		vim.keymap.set("n", "<leader>fc", "<CMD>FzfLua grep_cword<CR>", { desc = "Grep current word" })
		vim.keymap.set("n", "<leader>ss", "<CMD>FzfLua blines<CR>", { desc = "Swiper" })
		vim.keymap.set("n", "<leader>bs", "<CMD>FzfLua buffers<CR>", { desc = "Show buffers" })
	end,

	-- opts = {},
}
