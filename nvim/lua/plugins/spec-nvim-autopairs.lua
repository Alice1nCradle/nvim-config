return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true, -- 启用 Treesitter 支持
        ts_config = {
          lua = { "string", "source" }, -- 为 Lua 文件禁用字符串和源代码内的自动补全
          javascript = { "template_string" }, -- 为 JavaScript 禁用模板字符串补全
        },
        disable_filetype = { "TelescopePrompt", "vim" }, -- 禁用指定文件类型
      })

      -- 与 nvim-cmp 集成
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
}

