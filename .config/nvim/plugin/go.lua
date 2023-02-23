require('go').setup({
			go = 'go',
			goimport = 'gopls',
			gofmt = 'gofumpt',
			test_template = '',
			test_template_dir = '',
			comment_placeholder = '',
			test_dir = '',
			lsp_cfg = true,
			lsp_gofumpt = true,
			lsp_on_attach = true,
			gocoverage_sign = "█",
			verbose_tests = true,
			test_runner = 'ginkgo',
			run_in_floaterm = true,
})


local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})
