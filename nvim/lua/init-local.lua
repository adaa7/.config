--开启显示第几行
vim.cmd('set number')
vim.cmd('set relativenumber')
--设置tap的位移
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.g.mapleader = ' '

--设置 Neovim 默认编辑文本时使用 UTF-8 编码
vim.cmd('set encoding=utf-8')
--让光标高亮
vim.o.cursorline = true
--开启vim的颜色配置（对于主题来说是必须的）
vim.o.termguicolors = true



--一种深色配色方案，深受 Visual Studio Code 的 Dark+ 方案外观的启发。
vim.cmd('colorscheme codedark')

--开启material配色主题(https://github.com/marko-cerovac/material.nvim)
--vim.cmd 'colorscheme material'
