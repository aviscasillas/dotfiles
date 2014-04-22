(prelude-require-package 'ag)
(prelude-require-package 'bundler)
(prelude-require-package 'rubocop)
(prelude-require-package 'ruby-tools)

(prelude-require-package 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(prelude-require-package 'rbenv)
(global-rbenv-mode)

(prelude-require-package 'yard-mode)
(add-hook 'ruby-mode-hook 'yard-mode)

(prelude-require-package 'rspec-mode)
(setq rspec-use-rake-when-possible nil)

(key-chord-define-global "dd" 'make-directory)
(key-chord-define-global "gg" 'goto-line)
(key-chord-define-global "uu" 'undo)
(key-chord-define-global "UU" 'redo)
(key-chord-define-global "kk" 'next-multiframe-window)
(key-chord-define-global "jj" 'previous-multiframe-window)
(key-chord-define-global "xx" 'smex)

(display-time-mode 1)
(setq display-time-format "%R %d/%m/%Y")

(prelude-require-package 'indent-guide)
(require 'indent-guide)
(indent-guide-global-mode)

(prelude-require-package 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)

;; display line numbers
(global-linum-mode t)

;; insert a debugger statement on cursor (visk-helpers.el)
(global-set-key (kbd "C-c C-d") 'insert-debugger)
