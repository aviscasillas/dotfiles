;; Toggle fullscreen for OSX
(defun toggle-fullscreen()
  "Toggle full screen"
  (interactive)
  (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

(defun set-winner-mode()
  "Set winner-mode"
  (interactive)
  (when (fboundp 'winner-mode)
    (winner-mode 1)))

