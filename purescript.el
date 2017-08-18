(use-package purescript-mode
  :ensure t
  :pin emacs-pe)

(use-package psci
  :ensure t
  :pin emacs-pe)

(use-package psc-ide
  :ensure t
  :init (progn
	  (add-hook 'purescript-mode-hook 'psc-ide-mode)
	  (add-hook 'purescript-mode-hook 'company-mode)
	  (add-hook 'purescirpt-mode-hook 'flycheck-mode)))
