vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    -- Custom settings for python
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})
