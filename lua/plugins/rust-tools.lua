return {
  {
    "simrat39/rust-tools.nvim", -- Rust 特定功能支持
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      local rt = require("rust-tools")

      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- 定义快捷键
            local opts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set("n", "K", rt.hover_actions.hover_actions, opts)
            vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, opts)
          end,
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
              },
            },
          },
        },
      })
    end,
  }
}
