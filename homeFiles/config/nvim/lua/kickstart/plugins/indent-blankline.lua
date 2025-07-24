return {
  'lukas-reineke/indent-blankline.nvim',
  -- See `:help ibl` and `:help ibl.config`
  main = 'ibl',
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    indent = { char = '│', smart_indent_cap = true },
    whitespace = { highlight = { 'Whitespace' } },
    exclude = {
      buftypes = { 'terminal', 'quickfix', 'nofile', 'prompt' },
      filetypes = {
        'lspinfo',
        'checkhealth',
        'help',
        'man',
        'gitcommit',
        'TelescopePrompt',
        'TelescopeResults',
        'mason.nvim',
        '',
      },
    },
  },
}
