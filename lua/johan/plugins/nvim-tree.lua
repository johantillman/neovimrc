return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup()
        keymap = vim.keymap
        keymap.set("n", "<leader>ft", "<cmd>NvimTreeToggle<CR>", {
            desc = "Toggle file explorer"
        })
    end
}
