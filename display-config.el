
(message "Loading display settings")

(load-missing-packages '(color-theme))

(color-theme-initialize)
(color-theme-taming-mr-arneson)
;;(color-theme-gnome) 

;; Don't open files in new frames in guie emacs
(setq-default ns-pop-up-frames nil)

;; Don't show useless menu bar in gui emacs
(tool-bar-mode 0)

;; Line numbers everywhere, format prettily.  If we are in graphic mode don't
;; display the pipe symbol next to the line numbers.
( if (display-graphic-p)
    (progn 
      ;; If we are in graphic mode, set the gui emacs window size to just fit on
      ;; a 1280*800 mac display with the dock visible
      (add-to-list 'default-frame-alist '(height . 40))
      (add-to-list 'default-frame-alist '(width . 170))

      ;; Set font for gui emacs to coincide with iterm font if the Monaco font
      ;; is available. Otherwise leave everything as it is
      (cond ((find-font (font-spec :name "Monaco"))
	     (add-to-list 'default-frame-alist '(font . "Monaco 12")))
	    ((find-font (font-spec :name "Courier"))
	     (add-to-list 'default-frame-alist '(font . "Courier 12"))))
      
      (setq-default linum-format "%4d"))
  (setq-default linum-format (concat "%4d" (propertize "│" 'face 'mode-line))))

;; Always show line numbers
(global-linum-mode 1)

;; Highlight matching braces / brackets / curly braces by default
(show-paren-mode 1)

;; Always show line and column number in mode line
(column-number-mode 1)
(line-number-mode   1)
