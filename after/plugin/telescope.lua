local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- to this work you have ensure ripgrep is installed 🐢
vim.keymap.set('n', '<leader>sw', function()
	builtin.grep_string({  search = vim.fn.input("Grep > ") });
end)

