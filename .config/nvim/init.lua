
require('init-packer') -- 加载插件管理器

require('plugin-config/nvim-treesitter') --加载代码高亮插件的配置文件
require('plugin-config/nvim-tree') -- 加载文件树的配置文件
require('plugin-config/lualine') -- 加载状态栏
require('plugin-config/doom-one') -- 加载主题
require("confing.dashboard") -- 加载主页主题


vim.cmd('set number') -- 原本的vim语法实现显示行号
vim.cmd('set relativenumber') -- 相对行号
vim.cmd('set nowrap') -- 一行太长不折到第二行
-- vim.o.number = true -- 现在的lua语法实现显示行号
vim.o.tabstop = 4	-- 制表符长度
vim.o.shiftwidth = 4 -- 按 shift + > 缩进的长度，以及自动美化缩进时使用的长度
vim.o.expandtaab = true -- tab 的缩进变成空格
vim.o.smartindent = true -- 新行自动根据上下文智能缩进
vim.o.termguicolors = true -- 开主题美化

vim.o.cursorline = true -- 突出光标所在行
-- vim.cmd('set cursorcolumn') -- 突出当前列
vim.cmd('set clipboard+=unnamedplus') -- 和系统剪辑板互通

-- ==== 改键 ==== --
vim.cmd('imap jj <Esc>')

-- 方向键无效
vim.cmd('map <Up> <Nop>')
vim.cmd('map <Down> <Nop>')
vim.cmd('map <Left> <Nop>')
vim.cmd('map <Right> <Nop>')
vim.cmd('map <^c> <^c>')
		
vim.cmd('set termguicolors') -- 使用更好的彩色
vim.cmd('syntax on') -- 开启语法高亮
vim.o.winblend = 30 -- 浮动窗口的透明度
-- vim.o.background = 'dark'
vim.cmd('set mouse=') -- 关闭鼠标

-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

