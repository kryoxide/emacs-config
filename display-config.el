(message "Loading display settings")

(load-missing-packages '(color-theme))

(color-theme-initialize)
(color-theme-taming-mr-arneson)

;; Line numbers everywhere, format prettily
( if (display-graphic-p)
    (setq linum-format "%4d")
  (setq linum-format (concat "%4d" (propertize "│" 'face 'mode-line))))

(global-linum-mode 1)

;; Highlight matching braces / brackets / curly braces by default
(show-paren-mode 1)

;; Always show line and column number in mode line
(column-number-mode 1)
(line-number-mode   1)
