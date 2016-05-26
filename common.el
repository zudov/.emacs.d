;; Some global key translations

(define-key key-translation-map [?\C-x] [?\C-u])
(define-key key-translation-map [?\C-u] [?\C-x])

(define-key key-translation-map [?\M-x] [?\M-u])
(define-key key-translation-map [?\M-u] [?\M-x])

(use-package helm
  :ensure t
  :config (helm-mode 1))

(use-package keyfreq
  :ensure t
  :config
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1))

(use-package avy
  :ensure t
  :bind
  ("C-," . avy-goto-word-or-subword-1)
  :config
  (setq avy-keys '(?u ?h ?e ?t ?o ?n ?a ?s)))

(use-package ace-window
  :ensure t
  :bind
  ("C-." . ace-window)
  :config
  (setq aw-keys '(?u ?h ?e ?t ?o ?n ?a ?s)))

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox-developer")
