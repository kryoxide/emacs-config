(message "Loading csharp related packages and settings")

(setq package-list '( csharp-mode
		      omnisharp-mode
		      ))

(eval-after-load 'omnisharp-mode
  (progn 
    (setq omnisharp-server-executable-path
	  "/Users/kryo/omnisharp/omnisharp-server/run_omnisharp.sh")

    (add-hook 'csharp-mode-hook 'omnisharp-mode)
    (eval-after-load 'company
      '(add-to-list 'company-backends 'company-omnisharp))

    (setq omnisharp-code-format-expand-tab t)
    (setq indent-tabs-mode nil)
    (add-hook 'csharp-mode-hook 'yas-minor-mode)
    (add-hook 'csharp-mode-hook 'company-mode)
    (add-hook 'csharp-mode-hook 'turn-on-eldoc-mode) ; Show function arg list
    (add-hook 'omnisharp-mode-hook 'flycheck-mode)))
