return {
  {
    "nvim-lualine/lualine.nvim", -- Lualine 插件
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- 可选，用于状态栏图标
    lazy = false, -- 确保启动时加载
    priority = 900, -- 确保优先加载（可选）
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto", -- 自动选择主题
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          icons_enabled = true,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = { "nvim-tree", "quickfix" },
      })
    end,
  },
}

