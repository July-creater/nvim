-- auto-save.nvim: Automatically save your work
return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  config = function()
    require("auto-save").setup {
      enabled = true,
      execution_message = {
        enabled = false,
        message = function()
          return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost" },
        defer_save = { "InsertLeave", "TextChanged" },
        cancel_defered_save = { "InsertEnter" },
      },
      condition = function(buf)
        local fn = vim.fn
        local utils = require("auto-save.utils.data")
        if utils.not_in(fn.getbufvar(buf, "&filetype"), { 'lua', "NvimTree" }) then
          return true
        end
        return false
      end,
      write_all_buffers = false,
      noautocmd = false,
      debounce_delay = 1000,
      debug = false,
    }
  end
}
