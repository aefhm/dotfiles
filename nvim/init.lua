-- Neovim config
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "LightGray" })
	end,
})
vim.o.colorcolumn = "80"
vim.o.number = true
vim.o.numberwidth = 1
vim.o.expandtab = true
vim.o.ts=2 sw=2
vim.o.shiftwidth = 2
vim.o.tabstop=2
vim.cmd('syntax enable')

-- LSP configuration
local lspconfig = require('lspconfig')

-- Configure servers
lspconfig.gopls.setup{}
lspconfig.pyright.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.ts_ls.setup{}
-- Add more servers as needed

-- Global mappings
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    -- Add more key mappings as needed
  end,
})
