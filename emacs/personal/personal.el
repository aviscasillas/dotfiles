(prelude-require-package 'ag)
(prelude-require-package 'bundler)
(prelude-require-package 'rubocop)
(prelude-require-package 'ruby-tools)

(prelude-require-package 'rbenv)
(global-rbenv-mode)

(prelude-require-package 'yard-mode)
(add-hook 'ruby-mode-hook 'yard-mode)

(prelude-require-package 'rspec-mode)
(setq rspec-use-rake-when-possible nil)

(key-chord-define-global "kk" 'next-multiframe-window)
(key-chord-define-global "jj" 'previous-multiframe-window)
(key-chord-define-global "xx" 'smex)

(display-time-mode 1)
(setq display-time-format "%R %d/%m/%Y")

(prelude-require-package 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c C-f") 'toggle-fullscreen)

;; set home as default directory
(setq default-directory "~/" )

;; display line numbers
(global-linum-mode t)

;; disable whitespace mode
(setq prelude-whitespace nil)

(setq set-winner-mode)

;; Short cut for ace-window
(global-set-key (kbd "M-p") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; Disable scrollbars
(scroll-bar-mode -1)

;; Set font size
(set-face-attribute 'default nil :height 100)

;; Multi-term config
(setq multi-term-program "/bin/zsh")
;; Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

(setq ruby-insert-encoding-magic-comment nil)
