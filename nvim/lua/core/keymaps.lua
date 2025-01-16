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