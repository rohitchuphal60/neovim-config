vim.api.nvim_create_autocmd('FileType', {
  pattern = 'java',
  callback = function()
    -- Java style: 4 spaces, expand tabs
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4

    -- Optionally format with google-java-format on save if installed
    vim.api.nvim_create_autocmd('BufWritePre', {
      buffer = 0,
      callback = function()
        vim.cmd 'silent! !google-java-format -i %'
      end,
    })
  end,
})
