vim.g.mapleader = " "

local keymap = vim.keymap

-- Disable arrow keys
keymap.set("n", "<Up>", "<Nop>", {
	noremap = true,
	silent = true,
})
keymap.set("n", "<Down>", "<Nop>", {
	noremap = true,
	silent = true,
})
keymap.set("n", "<Left>", "<Nop>", {
	noremap = true,
	silent = true,
})
keymap.set("n", "<Right>", "<Nop>", {
	noremap = true,
	silent = true,
})

-- Venv selector
keymap.set({ "n", "x" }, ",v", ":VenvSelect<cr>", {
	desc = "Python venv selector",
})

-- Reload
keymap.set("n", "<leader>r", ":so ~/.config/nvim/init.lua<CR>", {
	desc = "Reload config",
})

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", {
	desc = "Clear search highlights",
})

-- Refactoring
keymap.set("x", "<leader>re", ":Refactor extract", {
	desc = "Extract function",
})
keymap.set("x", "<leader>rf", ":Refactor extract_to_file", {
	desc = "Extract function to file",
})
keymap.set("x", "<leader>rv", ":Refactor extract_var", {
	desc = "Extract variable",
})
keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var", {
	desc = "Inline variable",
})
keymap.set("n", "<leader>rI", ":Refactor inline_func", {
	desc = "Inline function",
})
keymap.set("n", "<leader>rb", ":Refactor extract_block", {
	desc = "Extract block",
})
keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file", {
	desc = "Extract block to file",
})

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", {
	desc = "Split window vertically",
})
keymap.set("n", "<leader>sh", "<C-w>s", {
	desc = "Split window horizontally",
})
keymap.set("n", "<leader>se", "<C-w>=", {
	desc = "Make splits equal size",
})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {
	desc = "Close current split",
})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {
	desc = "Open new tab",
})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {
	desc = "Close current tab",
})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {
	desc = "Go to next tab",
})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {
	desc = "Go to previous tab",
})

keymap.set("n", "<leader>tm", function()
	local count = vim.v.count
	if count == 0 then
		count = 1
	end
	vim.cmd("tabm +" .. count)
end, { desc = "Move tab forward N positions" })
keymap.set("n", "<leader>tM", function()
	local count = vim.v.count
	if count == 0 then
		count = 1
	end
	vim.cmd("tabm -" .. count)
end, { desc = "Move tab backward N positions" })

-- Undotree
keymap.set("n", "<leader>u", ":UndotreeToggle<cr>", {
	desc = "Toggle undo tree",
})

-- Git tree
keymap.set("n", "<leader>gs", ":Git<cr>", {
	desc = "Toggle git tree",
})
