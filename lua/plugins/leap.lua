-- leap.nvim: Motion plugin for Neovim
return {
  "ggandor/leap.nvim",
  config = function()
    -- require('leap').create_default_mappings()
    require('leap').init_highlight(true)
  end
}
