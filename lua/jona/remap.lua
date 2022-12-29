vim.g.mapleader = " "

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- search file in folder
map("n", "<leader>pv", vim.cmd.Ex)
-- exit insert mode
map("i", ",,", "<esc>")

-- exit virtual mode
map("v", ",,", "<esc>")

-- close file
map("n", "<Leader>q", ":q<CR>")

-- save file
map("n", "<Leader>w", ":w<CR>")

-- exit without saving
map("n", "<Leader>e", ":q!<CR>")

-- open terminal
map("n", "<Leader>ot", ":term pwsh -nologo <CR>")

-- open vterm
map('n', '<leader>th', ':botright new <Bar> :terminal pwsh -nologo <CR>')
map('n', '<leader>ts', ':botright vnew <Bar> :terminal pwsh -nologo <CR>')

-- Hop shortcuts
map("n", "<Leader>s", ":HopAnywhere<CR>")
map("n", "<Leader>sl", ":HopLine<CR>")


-- toggle comment
map("n", "<leader>c<Leader>", ":CommentToggle<CR>")
map("v", "<leader>c<Leader>", ":CommentToggle<CR>")

-- custom
map("n", "-", "10k")
map("n", "m", "10j")
map("n", "<Leader>Y", ":%y+<CR>")
map("n", "Y", "y$")
map("n", "<leader>g", "$")
map("n", "<leader>a", "^")

