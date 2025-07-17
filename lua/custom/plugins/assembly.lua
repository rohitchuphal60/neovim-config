return {
  {
    -- This is a dummy plugin spec just to run your config code
    config = function()
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'asm',
        'nasm',
        'masm',
        callback = function()
          vim.bo.expandtab = true
          vim.bo.shiftwidth = 4
          vim.bo.tabstop = 4
        end,
      })
    end,
  },
}
