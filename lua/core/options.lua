local opt = vim.opt
local api = vim.api
local g = vim.g

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- wrap the line via win_width
local function set_dynamic_wrap()
  -- get win_width
  local win_width = vim.api.nvim_win_get_width(0)
  -- set dynamic colorcolumn
  if win_width > 80 then
    opt.colorcolumn = tostring(win_width - 5)
  else
    opt.colorcolumn = "0"
  end
end

-- automation
api.nvim_create_autocmd("VimResized", {
  callback = set_dynamic_wrap
})

set_dynamic_wrap()

opt.wrap = true
opt.linebreak = true
opt.textwidth = 0

-- configure vimtex
g.vimtex_compiler_method = 'latexmk'
g.vimtex_compiler_latexmk = {
  options = {
    "-pdf",
    "-shell-escape",
    "-synctex=1",
    "-interaction=nonstopmode"
  }
}

-- auto compiling *.tex
api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.tex",
  command = "VimtexCompile"
})
