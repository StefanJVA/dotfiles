local setup, lsp = pcall(require, "lsp-zero")
if not setup then
  return
end

lsp.preset('recommended')

lsp.ensure_installed({
	'sumneko_lua',
	'pyright',
	'tsserver',
	'eslint',
	'rust_analyzer',
})

lsp.setup()
