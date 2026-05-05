return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("starvim.lsp")
    end,
  },

  {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  event = {"BufReadPost", "BufNewFile" },
  config = function()
    require("starvim.plugins.configs.treesitter")
  end,
  },

  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("starvim.plugins.configs.cmp")
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    keys = {
      { "<leader>ff", ":Telescope find_files<CR>", noremap = true },
      { "<leader>fg", ":Telescope live_grep<CR>", noremap = true },
      { "<leader>fb", ":Telescope buffers<CR>", noremap = true },
      { "<leader>fh", ":Telescope help_tags<CR>", noremap = true },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("starvim.plugins.configs.telescope")
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("starvim.plugins.configs.lualine")
    end,
  },

  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    keys = {
      { "<leader>e", ":Oil<CR>", noremap = true },
    },
    config = function()
      require("starvim.plugins.configs.oil")
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    keys = {
      { "<leader>lg", ":LazyGit<CR>", noremap = true },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
  },


  {
    'mrcjkb/rustaceanvim',
    version = '^9',
    lazy = false
  },

  {
  "lopi-py/luau-lsp.nvim",
   opts = {
     platform = {
       type = "roblox",
     },
     types = {
       roblox_security_level = "PluginSecurity",
     },
     sourcemap = {
       enabled = true,
       autogenerate = true,
       rojo_project_file = "default.project.json",
       sourcemap_file = "sourcemap.json",
     },
   },
  }
}
