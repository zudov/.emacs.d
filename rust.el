(use-package rust-mode
  :ensure t
  :init (progn
					(setq rust-indent-offset 2)))


(use-package cargo
  :ensure t
  :config (progn
						(add-hook 'rust-mode-hook 'cargo-minor-mode)))

(use-package racer
  :ensure t
  :config (progn
						(add-hook 'rust-mode-hook  'racer-mode)
						(add-hook 'racer-mode-hook 'eldoc-mode)
						(add-hook 'racer-mode-hook 'company-mode)
						(add-hook 'racer-mode-hook 'flycheck-mode)))
