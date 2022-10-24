require('init-packer')
--require('packer-doom-one')
--dkjflkdsjfl

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
		
vim.cmd('set termguicolors') -- 使用更好的彩色
vim.cmd('syntax on') -- 开启语法高亮
vim.o.winblend = 30 -- 浮动窗口的透明度
-- vim.o.background = 'dark'
vim.cmd('set mouse=') -- 关闭鼠标

-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  --ensure_installed = { "c", "lua", "rust" },
  ensure_installed = "all",

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require('lualine').setup{
	options = { theme = 'gruvbox' }
}
