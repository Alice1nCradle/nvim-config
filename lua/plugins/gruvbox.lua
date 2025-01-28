return {
  {
    "morhetz/gruvbox", -- Molokai 主题仓库
    lazy = false, -- 立即加载主题
    priority = 1000, -- 确保主题优先加载
    config = function()
      -- 启用主题
      vim.opt.termguicolors = true -- 启用 24 位真彩色支持
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
