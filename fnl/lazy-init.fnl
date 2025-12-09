(local lazypath (.. (vim.fn.stdpath "data") "/lazy/lazy.nvim"))
(local fs_stat (. (or vim.uv vim.loop) "fs_stat"))

(case (fs_stat lazypath)
  nil (let [ lazyrepo "https://github.com/folke/lazy.nvim.git"
    out (vim.call "system" [ "git" "clone" "--filter=blob:none" "--branch=stable" lazyrepo lazypath ]) ]
      (print vim.v.shell_error)
      (if (not= vim.v.shell_error 0)
        (vim.api.nvim_echo [
          [ "Failed to clone lazy.nvim:\n" "ErrorMsg" ]
          [ out "WarningMsg" ]
          [ "\nPress any key to exit..." ] ] true {})
        (vim.fn.getchar)
        (os.exit 1)))

  [_] (print "Hello, FeNvim  "))

(vim.opt.rtp:prepend lazypath)

(tset vim.g "mapleader" " ")
(tset vim.g "maplocalleader" "\\")

(let [lazy (require :lazy)]
  (lazy.setup
    {:spec [ (. (require :fnl.plugins) :list) ]
    :checker {:enabled false}}))
