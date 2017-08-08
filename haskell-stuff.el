(message "Loading haskell related packages and settings")

(load-missing-packages '( haskell-mode
			  hi2
			  flycheck-haskell
			  company-ghci))

;; Indetation module
(add-hook 'haskell-mode-hook 'turn-on-hi2)

;; Activate a mode to interact with a running stack/cabal/ghci process
;(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'intero-mode)

;; Type check etc on the fly
(with-eval-after-load 'flycheck
  (progn
    (add-hook 'haskell-mode-hook 'flycheck-mode)
    ;(add-hook 'flycheck-mode-hook 'flycheck-haskell-configure)
    ))

(with-eval-after-load 'company
  (progn
    (push 'company-ghci company-backends)
    (add-hook 'haskell-mode-hook 'company-mode)
    (custom-set-variables '(company-ghc-show-info t))))

;; Suggest cabal file packages to import
(custom-set-variables
 '(haskell-process-suggest-hoogle-imports t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t))
