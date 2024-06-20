-- toggleterm.nvim: Terminal integration
return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 30, -- 设置终端窗口的高度
      open_mapping = [[<c-\>]], -- 设置打开终端的快捷键
      hide_numbers = true, -- 隐藏行号
      shade_filetypes = {},
      shade_terminals = true, -- 终端窗口阴影效果
      shading_factor = 1, -- 阴影程度
      start_in_insert = true, -- 启动时进入插入模式
      insert_mappings = true, -- 允许在插入模式下使用打开终端的快捷键
      persist_size = true, -- 记住终端窗口的大小
      direction = "float", -- 终端窗口显示为浮动窗口
      close_on_exit = true, -- 关闭终端时自动关闭窗口
      shell = vim.o.shell, -- 使用默认 shell
      float_opts = {
        border = "curved",
        winblend = 0,
        width = function()
          return math.floor(vim.o.columns * 0.5)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.4)
        end,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })


    -- 使用快捷键打开 lazygit
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
  end
}
