(message "Loading display settings")

(load-missing-packages '(color-theme))

(color-theme-initialize)
(color-theme-taming-mr-arneson)

;; Set the gui emacs window size to just fit on a 1280*800 mac display with the
;; dock visible
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 170))

;; Don't open files in new frames in guie emacs
(setq ns-pop-up-frames nil)

;; Line numbers everywhere, format prettily.  If we are in graphic mode don't
;; display the pipe symbol next to the line numbers
( if (display-graphic-p)
    (setq linum-format "%4d")
  (setq linum-format (concat "%4d" (propertize "│" 'face 'mode-line))))

;; Always show line numbers
(global-linum-mode 1)

;; Highlight matching braces / brackets / curly braces by default
(show-paren-mode 1)

;; Always show line and column number in mode line
(column-number-mode 1)
(line-number-mode   1)
