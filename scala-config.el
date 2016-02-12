(message "Loading scala related packages and settings")

(load-missing-packages '( scala-mode2
			  ensime))


(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
