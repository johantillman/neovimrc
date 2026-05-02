return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"go",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
				"python",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})

		-- ONLY enable treesitter for specific filetypes that have parsers
		local treesitter_filetypes = {
			"python",
			"lua",
			"javascript",
			"typescript",
			"tsx",
			"json",
			"yaml",
			"html",
			"css",
			"go",
			"bash",
			"c",
			"markdown",
			"vim",
			"dockerfile",
		}

		vim.api.nvim_create_autocmd("FileType", {
			pattern = treesitter_filetypes,
			callback = function(args)
				pcall(vim.treesitter.start, args.buf)
			end,
		})
	end,
}
