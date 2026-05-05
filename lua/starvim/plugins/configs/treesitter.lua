require("nvim-treesitter").setup({
  ensure_installed = {
    "lua",
    "python",
    "javascript",
    "typescript",
    "tsx",
    "jsx",
    "vue",
    "rust",
    "c",
    "cpp",
    "perl",
    "java",
    "json",
    "yaml",
    "toml",
    "bash",
    "markdown",
    "comment",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]f"] = "@function.outer",
        ["]c"] = "@class.outer",
      },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[c"] = "@class.outer",
      },
    },
  },
})
