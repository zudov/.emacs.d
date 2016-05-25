(use-package haskell-mode
  :init (progn
	  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
	  (custom-set-variables
	   '(haskell-process-type 'stack-ghci)
	   '(haskell-process-auto-import-loaded-modules t)
	   '(haskell-process-log t)
	   '(haskell-tags-on-save t)))
  :config (progn
	    (require 'haskell-interactive-mode)
	    (require 'haskell-process))
  :bind (:map haskell-mode-map
	      ("C-c C-l" . haskell-process-load-or-reload)
	      ("C-`" . haskell-interactive-bring)
	      ("M-." . haskell-mode-jump-to-def-or-tag)
	      ("M-," . xref-pop-marker-stack)))
