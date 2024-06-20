-- telescope.nvim: Fuzzy finder
return {
  "nvim-telescope/telescope.nvim",
  commit = "d90956833d7c27e73c621a61f20b29fdb7122709",
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      version = "^1.0.0"
    },
  },
  config = function()
    local actions = require "telescope.actions"
    local telescope = require("telescope")
    telescope.setup {
      defaults = {
        path_display = function(_, path)
          local tail = vim.fs.basename(path)
          local parent = vim.fs.dirname(path)
          if parent == "." then return tail end
          return string.format("%s (%s)", tail, parent)
        end,
        mappings = {
          i = {
            ["<C-j>"] = actions.cycle_history_next,
            ["<C-k>"] = actions.cycle_history_prev,
          },
          n = {
            ["<C-j>"] = actions.cycle_history_next,
            ["<C-k>"] = actions.cycle_history_prev,
          },
        },
      },
    }
    telescope.load_extension("live_grep_args")
  end
}
