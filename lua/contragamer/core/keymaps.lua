vim.g.mapleader = " "

local function map(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { desc = desc })
end

map("i", "jk", "<ESC>", "Exit insert mode with jk")
map("i", "jkl", "<Esc>la", "Exit insert mode with jk and move right one space and back mode insert")
map("i", "jkll", "<Esc>l", "Exit insert mode with jk and move right")

map("n", "<leader>nh", ":nohl<CR>", "Clear search highlights")

map("n", "<leader>+", "<C-a>", "Increment number")
map("n", "<leader>-", "<C-x>", "Decrement number")

-- window management
map("n", "<leader>sv", "<C-w>v", "Split window vertically") -- split window vertically
map("n", "<leader>sh", "<C-w>s", "Split window horizontally") -- split window horizontally
map("n", "<leader>se", "<C-w>=", "Make splits equal size") -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", "Close current split") -- close current split window

map("n", "<leader>to", "<cmd>tabnew<CR>", "Open new tab") -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", "Close current tab") -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", "Go to next tab") --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", "Go to previous tab") --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", "Open current buffer in new tab") --  move current buffer to new tab
