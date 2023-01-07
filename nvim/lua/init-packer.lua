return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- nvim-tree
  use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
  -- bufferline
  use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
  -- lualine
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
  use("arkav/lualine-lsp-progress")
  -- telescope （）
  use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
  -- dashboard-nvim 
  use("glepnir/dashboard-nvim")  
  -- project(telescope 的一个插件)
  use("ahmedkhalf/project.nvim")
  -- treesitter （新增）
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  --跳行
  use 'ggandor/leap.nvim'
  -- 自动注释用（gcc）
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
  -- 自动补充后一半的括号
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
  --------------------- LSP --------------------
 use({ "williamboman/mason.nvim" })
 use({ "williamboman/mason-lspconfig.nvim" })
  -- Lspconfig
  use({ "neovim/nvim-lspconfig" })
 -- 补全引擎
 use("hrsh7th/nvim-cmp")
 -- snippet 引擎
 use("hrsh7th/vim-vsnip")
 -- 补全源
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
  use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
  use("hrsh7th/cmp-path") -- { name = 'path' }
  use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

  -- 常见编程语言代码段
  use("rafamadriz/friendly-snippets")

  -- ui (新增)
  use("onsails/lspkind-nvim")
  -- indent-blankline
  use("lukas-reineke/indent-blankline.nvim")
  use("tami5/lspsaga.nvim" ) -- 新增


 -- colorscheme
 --------------------- colorschemes --------------------
 use 'tomasiser/vim-code-dark'
 -- tokyonight
 use("folke/tokyonight.nvim")
 -- OceanicNext
 use("mhartington/oceanic-next")
 -- gruvbox
 use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
 -- zephyr 暂时不推荐，详见上边解释
 -- use("glepnir/zephyr-nvim")
 -- nord
 use("shaunsingh/nord.nvim")
 -- onedark
 use("ful1e5/onedark.nvim")
 -- nightfox
 use("EdenEast/nightfox.nvim")
 -------------------------------------------------------
  use 'tomasiser/vim-code-dark'
 end)
