return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		-- local theme = require("lualine.themes._tokyonight").get("storm")
		lualine.setup({
			options = {
				theme = "auto",
			},
		})
	end,
}
