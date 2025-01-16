return {
  {
    "williamboman/mason.nvim", -- 可选，用于管理 Rust Analyzer
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "rust_analyzer", "clangd" },
      })
    end,
  },
}
