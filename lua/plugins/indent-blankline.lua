-- indent-blankline.nvim: Indentation guides
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = { char = "│" },
    whitespace = { highlight = { "Whitespace", "NonText" } },
    scope = { show_start = false, show_end = false },
  }
}
