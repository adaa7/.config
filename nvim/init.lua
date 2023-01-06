--导入packer
require('init-packer')	
-- 导入配置文件
require('init-local') 
--导入lse
require('init-lsp')
--导入键盘映射
require('init-keymaps')

--require('leap').add_default_mappings()              
require('leap').opts.highlight_unlabeled_phase_one_targets = true
vim.keymap.set({'x', 'o', 'n'}, 'f', '<Plug>(leap-forward-to)')
vim.keymap.set({'x', 'o', 'n'}, 'F', '<Plug>(leap-backward-to)')

vim.keymap.set({'x', 'o', 'n'}, 'gf', '<Plug>(leap-cross-window)')
