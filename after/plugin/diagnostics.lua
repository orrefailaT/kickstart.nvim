local ERROR = vim.diagnostic.severity.ERROR
local WARN = vim.diagnostic.severity.WARN
local INFO = vim.diagnostic.severity.INFO
local HINT = vim.diagnostic.severity.HINT

vim.diagnostic.config {
  float = {
    source = true,
    border = 'single',
  },
  signs = {
    text = {
      [ERROR] = '',
      [WARN] = '',
      [INFO] = '󰋽',
      [HINT] = '',
    },
  },
  virtual_text = false,
}

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  -- Use a sharp border with `FloatBorder` highlights
  border = 'single',
})
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
