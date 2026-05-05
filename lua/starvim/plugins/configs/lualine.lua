require("lualine").setup({
  options = {
    theme = "wombat",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard", "NvimTree" },
    globalstatus = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", { 'lsp_status', icon = '',
      symbols = {
        spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' },
        done = '✓',
        separator = ' ',
      },
      ignore_lsp = {},
      show_name = true,
      }
    },
    lualine_c = {
      { "filename", path = 1 },
      { "diagnostics", sources = { "nvim_diagnostic" } },
    },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  extensions = { "oil", "quickfix", "lazy" },
})
