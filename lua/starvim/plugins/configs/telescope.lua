local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    prompt_prefix = "  ",
    selection_caret = " ",
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-n>"] = actions.move_selection_next,
        ["<C-p>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
        ["<Esc>"] = actions.close,
      },
    },
  },
  pickers = {
    find_files = {
      hidden = true,
      respect_gitignore = true,
    },
    live_grep = {
      additional_args = function(opts)
        return { "--hidden" }
      end,
    },
  },
})

telescope.load_extension("fzf")
