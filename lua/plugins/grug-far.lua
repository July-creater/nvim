-- grug-far.nvim: Fuzzy file finder and replacer
return {
  'MagicDuck/grug-far.nvim',
  config = function()
    require('grug-far').setup({
      -- ... options, see Configuration section below ...
      -- ... there are no required options atm...
    });
  end
}
