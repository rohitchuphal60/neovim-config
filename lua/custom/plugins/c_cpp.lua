vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp' },
  callback = function()
    -- Use spaces for indentation (common C/C++ style)
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4

    -- Enable clang-format on save if available
    vim.api.nvim_create_autocmd('BufWritePre', {
      buffer = 0,
      callback = function()
        vim.cmd 'silent! !clang-format -i %'
      end,
    })
  end,
})
