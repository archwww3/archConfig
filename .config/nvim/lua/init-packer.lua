-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- 更新自己本身
  use 'goolord/alpha-nvim' -- 打开主页主题插件
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', run =':TSBufToggle highlight'} -- 代码高亮
  use 'NTBBloodbath/doom-one.nvim' -- 主题

  use {
  	'nvim-lualine/lualine.nvim', -- 状态栏美化
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use ({
  	'nvim-tree/nvim-tree.lua',
  	requires = {
  	  'nvim-tree/nvim-web-devicons', -- optional, for file icons
  	},
  	tag = 'nightly' -- optional, updated every week. (see issue #1193)
  })
    

end)
