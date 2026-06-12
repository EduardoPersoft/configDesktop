require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>tf", "<cmd>NvimTreeFindFile<CR>", { desc = "NvimTree focar arquivo atual" })
map("n", "<leader>py", "<cmd>w | !python3 %<cr>", { desc = "Python: Execute script" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
