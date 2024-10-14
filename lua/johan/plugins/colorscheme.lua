function SetLuaLine()
	require("lualine").setup({
		options = {
			theme = "auto",
		},
	})
end

function SetTheme(theme)
	vim.cmd.colorscheme(theme)
	SetLuaLine()
	-- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				transparent = true,
			})
			SetTheme("cyberdream")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				styles = {
					bold = false,
					italic = false,
					transparency = true,
				},
			})
			-- SetTheme("rose-pine-main")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					floats = "transparent",
				},
			})
			-- SetTheme("tokyonight-night")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				no_italic = true,
				no_bold = false,
				no_underline = false,
				-- styles = {
				-- 	comments = {},
				-- 	conditionals = {},
				-- 	loops = {},
				-- 	functions = {},
				-- 	keywords = {},
				-- 	strings = {},
				-- 	variables = {},
				-- 	numbers = {},
				-- 	booleans = {},
				-- 	properties = {},
				-- 	types = {},
				-- 	operators = {},
				-- },
			})
			-- SetTheme("catppuccin")
		end,
	},
}

-- 	{
-- 	},
-- }
