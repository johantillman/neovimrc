vim.g.mapleader = " "

local keymap = vim.keymap
-- esc
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with ESC" })
-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>1", "<C-n><C-w>h", { desc = "Previous window" })
keymap.set("n", "<leader>2", "<C-n><C-w>l", { desc = "Next window" })
-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- save file
keymap.set("n", "<leader>fs", "<cmd>:w<CR>", { desc = "Save file" })
-- quit nvim
keymap.set("n", "<leader>qq", "<cmd>:q<CR>", { desc = "Quit nvim" })
-- buffers
keymap.set("n", "<leader>bp", "<C-o>", { desc = "Previous buffer" })
keymap.set("n", "<leader>bn", "<C-i>", { desc = "Next buffer" })
