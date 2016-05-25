(use-package smartparens
  :ensure t
  :init (progn
	  (add-hook 'lisp-mode-hook       #'smartparens-mode)
	  (add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
	  (add-hook 'clojure-mode-hook    #'smartparens-mode)
	  (add-hook 'cider-repl-mode-hook #'smartparens-mode)
	  (add-hook 'haskell-mode-hook    #'smartparens-mode))
  :config (require 'smartparens-config)
  :bind (:map smartparens-mode-map
	      ("C-M-f" . sp-forward-sexp)
	      ("C-M-b" . sp-backward-sexp)
	      
	      ("C-M-d" . sp-down-sexp)
	      ("C-M-a" . sp-backward-down-sexp)
	      ("C-S-d" . sp-beginning-of-sexp)
	      ("C-S-a" . sp-end-of-sexp)
	      
	      ("C-M-e" . sp-up-sexp)
	      ("C-M-u" . sp-backward-up-sexp)
	      ("C-M-t" . sp-transpose-sexp)

	      ("C-M-n" . sp-next-sexp)
	      ("C-M-p" . sp-previous-sexp)

	      ("C-M-k" . sp-kill-sexp)
	      ("C-M-w" . sp-copy-sexp)

	      ("M-<delete>" . sp-unwrap-sexp)
	      ("M-<backspace>" . sp-backward-unwrap-sexp)))


