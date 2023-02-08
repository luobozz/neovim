-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- 显示行号
vim.o.number = true

-- 高亮所在行
vim.o.cursorline = true

-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"

-- tab缩进
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.termguicolors = true

-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

--输入时搜索
vim.o.incsearch = true

--文件外部程序修改时自动加载
vim.o.autoread = true
vim.bo.autoread = true

--禁止创建备份文件和swap文件
--vim.o.backup = false
--vim.o.writebackup = false
vim.o.swapfile = false

--补全增强
vim.o.wildmenu = true

-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 鼠标支持
vim.o.mouse = "a"

vim.opt.clipboard:append ("unnamedplus")
-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99

