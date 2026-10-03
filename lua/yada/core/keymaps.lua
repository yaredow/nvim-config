local M = {}

local function general()
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = '[Q]uickfix list' })
  vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

  vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Focus left window' })
  vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Focus right window' })
  vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Focus lower window' })
  vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Focus upper window' })
end

local function diagnostics()
  vim.keymap.set('n', ']d', function() vim.diagnostic.jump { count = 1 } end, { desc = 'Next [D]iagnostic' })
  vim.keymap.set('n', '[d', function() vim.diagnostic.jump { count = -1 } end, { desc = 'Previous [D]iagnostic' })
  vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = '[L]ine diagnostic' })
end

function M.apply_lsp_keymaps(buf, client, spec)
  if not (client and spec) then return end
  for _, km in ipairs(spec) do
    if km.has then
      local method = km.has:find '/' and km.has or ('textDocument/' .. km.has)
      if not client:supports_method(method, buf) then goto continue end
    end
    if km.cond and not km.cond(buf, client) then goto continue end
    local opts = vim.tbl_extend('force', { buffer = buf, silent = true, desc = km.desc }, km.opts or {})
    vim.keymap.set(km.mode or 'n', km.lhs, km.rhs, opts)
    ::continue::
  end
end

function M.setup()
  general()
  diagnostics()
end

return M
