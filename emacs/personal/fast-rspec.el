(defun find-git-repo (dir)
  (if (string= "/" dir)
      (message "not in a git repo.")
    (if (file-exists-p (expand-file-name ".git/" dir))
        dir
      (find-git-repo (expand-file-name "../" dir)))))

(defun rspec-buffer ()
  (interactive)
  (let ((default-directory (find-git-repo default-directory))
        (command (concat "bundle exec rspec -c " (buffer-file-name (window-buffer)))))
    (async-shell-command command)))


(global-set-key (kbd "C-c C-e") 'rspec-buffer)
