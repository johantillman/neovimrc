return {
	"mbbill/undotree",
	-- dependencies = "nvim-lua/plenary.nvim",
	config = function()
		-- require("undotree").setup()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree" })
	end,
}
