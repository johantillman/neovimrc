vim.g.mapleader = " "

local keymap = vim.keymap

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", {
    desc = "Split window vertically"
}) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s", {
    desc = "Split window horizontally"
}) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", {
    desc = "Make splits equal size"
}) -- make split windows equal width & height
keymap.set("n", "<leader>wd", "<cmd>close<CR>", {
    desc = "Close current split"
}) -- close current split window

-- save file
keymap.set("n", "<leader>fs", "<cmd>:w<CR>", {
    desc = "Save file"
})
-- quit nvim
keymap.set("n", "<leader>qq", "<cmd>:q<CR>", {
    desc = "Quit nvim"
})

-- buffers
keymap.set("n", "<A-right>", "<C-o>", {
    desc = "Previous buffer"
})
keymap.set("n", "<A-left>", "<C-i>", {
    desc = "Next buffer"
})
keymap.set("n", "<leader>nh", "<CMD>:nohl<CR>", {
    desc = "Remove search highlights"
})
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
