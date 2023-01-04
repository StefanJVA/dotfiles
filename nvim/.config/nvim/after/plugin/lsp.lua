local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'sumneko_lua',
	'pyright',
	'tsserver',
	'eslint',
	'rust_analyzer',
})

lsp.setup()
