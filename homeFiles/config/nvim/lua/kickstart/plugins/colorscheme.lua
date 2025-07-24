local tokyonight = {
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('tokyonight').setup {
      styles = {
        transparent = true,
        comments = { italic = false }, -- Disable italics in comments
      },
    }
    vim.cmd.colorscheme 'tokyonight-night'
  end,
}

local tokyodark = {
  'tiagovla/tokyodark.nvim',
  opts = {
    transparent_background = true,
    terminal_colors = true,
  },
  config = function(_, opts)
    require('tokyodark').setup(opts)
    vim.cmd [[colorscheme tokyodark]]
  end,
}
return tokyodark

-- vim: ts=2 sts=2 sw=2 et
