(vim.keymap.set "n" "<Esc>" "<cmd>nohlsearch<CR>")

(vim.keymap.set "n" "<leader>w" "<C-w>" { :desc "Window mapping to leader" })

(vim.keymap.set "t" "<C-h>" "<cmd>wincmd h<CR>" { :desc "Term Navigate Left" })
(vim.keymap.set "t" "<C-j>" "<cmd>wincmd j<CR>" { :desc "Term Navigate Right" })(vim.keymap.set "t" "<C-k>" "<cmd>wincmd k<CR>" { :desc "Term Navigate Up" })
(vim.keymap.set "t" "<C-l>" "<cmd>wincmd l<CR>" { :desc "Term Navigate Down" })

;; Oil.nvim Keymaps
(vim.keymap.set "n"  "-"  "<cmd> lua require('oil').open_float()<cr>"  { :desc "Open directory" })
(vim.keymap.set "n"  "<leader>."  "<cmd> lua require('oil').open_float('.')<cr>"  { :desc "Open directory" })

;; Buffer mappings
(vim.keymap.set "n"  "<leader>bn"  ":bn<CR>"  { :desc  "Next buffer" })
(vim.keymap.set "n"  "<leader>bp"  ":bp<CR>"  { :desc  "Previous buffer" })
(vim.keymap.set "n"  "<leader>bd"  ":bd<CR>"  { :desc  "Delete buffer" })
(vim.keymap.set "n"  "<leader>C"  ":BufferLineCloseOthers<CR>"  { :desc  "Delete buffer" })

;; Insert mode keybindings
(vim.keymap.set "i"  "<C-b>"  "<Left>"  { :noremap  true })
(vim.keymap.set "i"  "<C-f>"  "<Right>"  { :noremap  true })
(vim.keymap.set "i"  "<C-n>"  "<Down>"  { :noremap  true })
(vim.keymap.set "i"  "<C-p>"  "<Up>"  { :noremap  true })
(vim.keymap.set "i"  "<C-e>"  "<End>"  { :noremap  true })
(vim.keymap.set "i"  "<C-d>"  "<Del>"  { :noremap  true })
(vim.keymap.set "i"  "<C-h>"  "<BS>"  { :noremap  true })
(vim.keymap.set "i"  "<C-k>"  "<ESC>$i"  { :noremap  true })

(vim.api.nvim_create_autocmd "TextYankPost" {
	:desc "Highlight when yanking (copying) text"
  :group (vim.api.nvim_create_augroup "kickstart-highlight-yank" {:clear true})
  :callback (fn [] (vim.highlight.on_yank))
})


;; vim: ts=2 sts=2 sw=2 et
