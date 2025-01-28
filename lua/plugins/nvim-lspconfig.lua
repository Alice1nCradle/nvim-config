return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
    event = "BufReadPre", -- 延迟加载
    config = function()
      local lspconfig = require("lspconfig")

      -- 配置 clangd
      lspconfig.clangd.setup({
        cmd = { "clangd" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
        on_attach = function(client, bufnr)
          print("C/C++ LSP attached")
        end,
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      })

      -- 配置 HTML LSP
      lspconfig.html.setup({
        on_attach = on_attach,
      })

      -- 配置 TypeScript/JavaScript LSP
      lspconfig.ts_ls.setup({
        on_attach = on_attach,
      })

      -- 配置 Vue LSP (Volar)
      lspconfig.volar.setup({
        on_attach = on_attach,
        filetypes = { "vue" }, -- 明确支持的文件类型
      })
      -- configure texlab
      lspconfig.texlab.setup({
        settings = {
        texlab = {
          latex = {
            build = {
              executable = "latexmk",
              args = {
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "%f"
              }
            }
          },
          view = {
            method = "sumatrapdf",
            forwardSearch = true
          }
        }
      }
      })
    end,
}

