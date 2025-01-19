vim.g.mapleader = " "

local keymap = vim.keymap

-- 视觉模式优化
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 正常模式优化
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 启用nvim-tree
keymap.set("n", "<leader>tr", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- 启用nvim-telescope快捷键
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find Buffers" })
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find Help" })

-- 启用Neovide配置
local g = vim.g
g.neovide_transparency = 0.9
keymap.set("n", "<C-=>", function()
    vim.g.neovide_transparency = math.min(vim.g.neovide_transparency + 0.1, 1)
end)
keymap.set("n", "<C-->", function()
    vim.g.neovide_transparency = math.max(vim.g.neovide_transparency - 0.1, 0.1)
end)
keymap.set("n", "<C-+>", function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1
end)
keymap.set("n", "<C-->", function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1
end)

