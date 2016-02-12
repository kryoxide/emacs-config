(message "Loading mosue support related packages and settings")

(require 'mouse)

(xterm-mouse-mode t)

;; Get mouse wheel scrolling working
(defun scroll-up-1-line () "Scroll up 1 line" (interactive) (scroll-up 1))
(defun scroll-down-1-line () "Scroll down 1 line" (interactive) (scroll-down 1))

(global-set-key (kbd "<mouse-4>") 'scroll-down-1-line)
(global-set-key (kbd "<mouse-5>") 'scroll-up-1-line)
