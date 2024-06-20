-- nvim-treesitter: Treesitter configurations and abstraction layer
return {
  "nvim-treesitter/nvim-treesitter",
  commit = "1b050206e490a4146cdf25c7b38969c1711b5620",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "cpp", "python", "markdown", "json", "yaml", "xml", "c", "bash", "lua", "vim", "vimdoc" },
      sync_install = false,
      highlight = { enable = true },
      indent = {
        enable = true,
      },
    })
  end
}
