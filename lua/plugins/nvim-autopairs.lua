-- nvim-autopairs: Auto pairs for brackets and quotes
return {
  'windwp/nvim-autopairs',
  dependencies = {
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
  },
  event = "InsertEnter",
  config = function()
    require('nvim-autopairs').setup({
      disable_filetype = { "TelescopePrompt", "vim", "spectre_panel", "dap-repl" },
    })
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end
}
