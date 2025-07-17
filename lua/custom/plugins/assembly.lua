vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'asm', 'nasm', 'masm' },
  callback = function()
    -- Most assembly styles use tabs, but you might prefer spaces
    vim.bo.expandtab = false
    vim.bo.shiftwidth = 8
    vim.bo.tabstop = 8

    -- Syntax highlighting is handled by Treesitter if installed (`asm` grammar)
    -- Formatting tools for assembly are rare, so no auto-formatting here
  end,
})
