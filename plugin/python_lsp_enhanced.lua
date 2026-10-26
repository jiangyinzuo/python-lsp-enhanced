if vim.g.loaded_python_lsp_enhanced then
  return
end
vim.g.loaded_python_lsp_enhanced = true

vim.api.nvim_create_user_command('PythonLspEnhanced', function(args)
  require('python_lsp_enhanced').run(args.args)
end, {
  nargs = '*',
  complete = function(lead)
    return require('python_lsp_enhanced.completion').complete(lead)
  end,
  desc = 'Inspect Python classes using the existing Neovim LSP client',
})
