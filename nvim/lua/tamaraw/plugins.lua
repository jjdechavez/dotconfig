local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  -- colorscheme
  use 'jjdechavez/coal.nvim'
  use { 'mcchrish/zenbones.nvim', requires = 'rktjmp/lush.nvim' }
  use 'ewilazarus/preto'
  use 'alligator/accent.vim'
  -- use({
  --   'ramojus/mellifluous.nvim',
  --   requires = { 'rktjmp/lush.nvim' },
  -- })

  -- Editing
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      { 'JoosepAlviste/nvim-ts-context-commentstring' }
    }
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use { 'jose-elias-alvarez/null-ls.nvim' }

  -- General
  use { 'ibhagwan/fzf-lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    commit = '4cd83bf754d5bf786a0835511f65643d7b925a55'
  }
  use { 'mbbill/undotree' }
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      {
        's1n7ax/nvim-window-picker',
        tag = "v1.*",
        config = function()
          require 'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              bo = {
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                buftype = { 'terminal', "quickfix" },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
      }
    }
  }
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end } -- if it has problem use this tpope/vim-commentary
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'theprimeagen/harpoon' }
  use { "aserowy/tmux.nvim", config = function() return require('tmux').setup() end }
  use { 'tpope/vim-surround' }
  -- use { 'tpope/vim-fugitive' } -- fzf.git_status great
  use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
  use { 'APZelos/blamer.nvim' }
  use { 'j-hui/fidget.nvim' }
  -- Tag closer
  use { 'windwp/nvim-autopairs', config = function() require("nvim-autopairs").setup {} end }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
