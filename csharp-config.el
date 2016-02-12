(message "Loading csharp related packages and settings")

(setq package-list '( csharp-mode
		      omnisharp-mode
		      ))


(add-hook 'csharp-mode-hook 'omnisharp-mode)

;(setq omni-sharp-server-executable-path "")
