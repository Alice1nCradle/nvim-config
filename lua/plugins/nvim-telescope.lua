return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { 
          "nvim-lua/plenary.nvim",
      },
        config = function()
            local telescope = require("telescope")
            telescope.setup({
                defaults = {
                    vimgrep_arguments = {
                        "rg",
                        "--color=never",
                        "--no-heading",
                        "--with-filename",
                        "--line-number",
                        "--column",
                        "--smart-case",
                    },
                    prompt_prefix = " ",
                    selection_caret = " ",
                    path_display = { "smart" },
                },
                pickers = {
                    find_files = {
                        theme = "dropdown", -- 使用下拉样式
                    },
                },
                extensions = {
                    -- 添加扩展的配置
                },
            })

            -- 加载扩展（如果需要）
            -- telescope.load_extension('fzf')
        end,
    },
}

