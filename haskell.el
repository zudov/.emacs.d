(use-package haskell-mode
  :ensure t
  :init (progn
	  (custom-set-variables
           '(haskell-stylish-on-save t)
	   '(haskell-process-type 'stack-ghci)
	   '(haskell-process-auto-import-loaded-modules t)
	   '(haskell-process-log t)
	   '(haskell-tags-on-save t))))

(use-package intero
  :ensure t
  :init (progn
	  (add-hook 'haskell-mode-hook 'intero-mode)))
