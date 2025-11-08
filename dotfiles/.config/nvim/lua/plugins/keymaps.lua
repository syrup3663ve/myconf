return {
  vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" }),
  vim.api.nvim_set_keymap(
    "i",
    "<CR>",
    "pumvisible() ? '\\<C-y>' : '\\<CR>'",
    { noremap = true, expr = true, silent = true }
  ),
}
