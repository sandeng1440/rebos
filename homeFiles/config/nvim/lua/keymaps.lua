-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set('n', 'L', '<cmd>bnext<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', 'H', '<cmd>bprevious<CR>', { desc = 'Previous Buffer' })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Delete Buffer' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

local function open_diagnostics_float()
  -- vim.api.nvim_command 'set eventignore=WinLeave'
  -- vim.api.nvim_command 'autocmd CursorMoved <buffer> ++once set eventignore=""'
  vim.diagnostic.open_float(nil, {
    focusable = true,
    scope = 'line',
    close_events = { 'CursoMoved', 'CursorMovedI', 'BufHidden', 'InsertCharPre', 'WinLeave' },
  })
end
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Float diagnostic message' })
-- vim.keymap.set('n', '<leader>cq', vim.diagnostic.setloclist, { desc = 'Open diagnostic Quickfix list' })

-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>|', '<cmd>vsplit<cr>', { desc = 'Vertical Split' })
vim.keymap.set('n', '<leader>-', '<cmd>split<cr>', { desc = 'Horizontal Split' })
vim.keymap.set('n', '<C-Up', ':resize +2<cr>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-Down', ':resize -2<cr>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase window width' })

vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move line up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

vim.keymap.set('v', '<', '<gv', { desc = 'Left indent' })
vim.keymap.set('v', '>', '>gv', { desc = 'Right indent' })

vim.keymap.set('n', '<leader>to', '<cmd>tabnew<cr>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>td', '<cmd>tabclose<cr>', { desc = 'Close tab' })
vim.keymap.set('n', '<leader>tn', '<cmd>tabnext<cr>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader>tp', '<cmd>tabprevious<cr>', { desc = 'Previous tab' })
vim.keymap.set('n', '<leader>t<', '<cmd>tabmove +1<cr>', { desc = 'Move tab right' })
vim.keymap.set('n', '<leader>t>', '<cmd>tabmove -1<cr>', { desc = 'Move tab left' })

-- vim: ts=2 sts=2 sw=2 et
