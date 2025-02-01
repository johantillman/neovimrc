vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>qq", "<cmd>:q<CR>", { desc = "Quit nvim" })
keymap.set("n", "<leader>bp", "<C-o>", { desc = "Previous buffer" })
keymap.set("n", "<leader>bn", "<C-i>", { desc = "Next buffer" })
keymap.set("n", "<A-left>", "<C-o>", { desc = "Previous buffer" })
keymap.set("n", "<A-right>", "<C-i>", { desc = "Next buffer" })
keymap.set("n", "<leader>fs", "<cmd>:w<CR>", { desc = "Save file" })
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<leader>nh", "<cmd>:nohl<CR>")
