--导入packer
require('init-packer')
-- 导入配置文件
require('init-local')
--导入键盘映射 require('init-keymaps') 
--主题设置 （新增）
require("colorscheme")

--一键编译f7


-- 插件配置
-- 侧边栏
require("plugin-config.nvim-tree")

--顶部标签页
require("plugin-config.bufferline")

--底部标签页
require("plugin-config.lualine")

--开启nvim开始美化
require("plugin-config.dashboard")
--require("plugin-config.project")

--开启代码高亮
require("plugin-config.nvim-treesitter")

--自动补充后一半的括号
require('nvim-autopairs')

-- 内置LSP (新增)
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui") 
--require("plugin-config.indent-blankline")


--require('leap').add_default_mappings()              
require('leap').opts.highlight_unlabeled_phase_one_targets = true
vim.keymap.set({'x', 'o', 'n'}, 'f', '<Plug>(leap-forward-to)')
vim.keymap.set({'x', 'o', 'n'}, 'F', '<Plug>(leap-backward-to)')
vim.keymap.set({'x', 'o', 'n'}, 'gf', '<Plug>(leap-cross-window)')
