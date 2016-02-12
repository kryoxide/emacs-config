;; Use some open source package archives
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Add all installed packages to the load path
;; Shold be happening automatically, possibly can cause some problems
(package-initialize)

(defun load-missing-packages (package-list)
  "Install packages in the argument if they aren't already installed"
  (dolist (package package-list)
    (unless (package-installed-p package)
      (progn (package-install package)
	     (require package)
	     ))))
  

(load-missing-packages '(flycheck
			 company
			 ))

;; Helps with filename completion, etc.
(ido-mode)

;; Enable dired reusing buffers when hitting 'a'
(put 'dired-find-alternate-file 'disabled nil)

(setq-default fill-column 80)

;; Load config regarding display and mouse
(load-file "~/.emacs.d/mouse-config.el")
(load-file "~/.emacs.d/display-config.el")

;; Load programming language specific environments
(load "~/.emacs.d/haskell-stuff.el")
(load-file "~/.emacs.d/scala-config.el")
(load-file "~/.emacs.d/python-config.el")
(load-file "~/.emacs.d/csharp-config.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Vi like movement between windows

(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-down)

;; Simple bindings for using this functionality in term
(eval-after-load 'term '(define-key term-raw-map (kbd "C-c l") 'windmove-right))
(eval-after-load 'term '(define-key term-raw-map (kbd "C-c h") 'windmove-left))
(eval-after-load 'term '(define-key term-raw-map (kbd "C-c k") 'windmove-up))
(eval-after-load 'term '(define-key term-raw-map (kbd "C-c j") 'windmove-down))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; A handy shortcut to kill entire lines
(global-set-key (kbd "M-9") 'kill-whole-line)

