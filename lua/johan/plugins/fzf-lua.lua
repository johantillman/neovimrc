return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = {"nvim-tree/nvim-web-devicons"},
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    --   opts = {}
    config = function()
        keymap = vim.keymap
        keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", {
            desc = "Files"
        })
        keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", {
            desc = "Live grep"
        })
        keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", {
            desc = "Buffers"
        })
        keymap.set("n", "<leader>fc", "<cmd>FzfLua grep_cword<CR>", {
            desc = "Grep word under cursor"
        })
        keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<CR>", {
            desc = "Recent files"
        })
    end
}
