return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate", -- 确保安装或更新解析器
        config = function()
            require("nvim-treesitter.configs").setup({
                -- 确保解析器安装的语言列表
                ensure_installed = {
                    "lua", "python", "javascript", "typescript", "html", "css", "bash", "json", "yaml",
                },
                sync_install = false,  -- 是否同步安装解析器
                auto_install = true,  -- 自动安装缺少的解析器

                highlight = {
                    enable = true,       -- 启用语法高亮
                    additional_vim_regex_highlighting = false, -- 使用 Tree-sitter 替代传统高亮
                },
                indent = {
                    enable = true,       -- 启用基于 Tree-sitter 的自动缩进
                },
            })
        end,
    },
}

