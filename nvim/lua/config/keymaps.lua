vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope - Find Files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope - Live Grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope - Buffers" })
vim.keymap.set("n", "<leader>ft", "<cmd>Telescope treesitter<cr>", { desc = "Telescope - Treesitter" })
vim.keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Telescope - Quickfix" })

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Trouble - Diagnostics" })
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Trouble - Buffer Diagnostics" })
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Trouble - Symbols" })
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", { desc = "Trouble - Quickfix List" })

vim.keymap.set("n", "<leader>nl", "<cmd>Noice last<cr>", { desc = "Noice - Shows the last message" })
vim.keymap.set("n", "<leader>nh", "<cmd>Noice history<cr>", { desc = "Noice - Shows the message history" })

vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Nvim-Tree - Toggles the tree" })

vim.keymap.set("n", "<C-p>", "<cmd>FzfLua files<cr>", { desc = "Fzf Files" })
