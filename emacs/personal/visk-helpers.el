(defun insert-debugger ()
  (interactive)
  (insert "require 'ruby-debug'; debugger; 2+2"))

;; Toggle fullscreen for OSX
(defun toggle-fullscreen()
  "Toggle full screen"
  (interactive)
  (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))
