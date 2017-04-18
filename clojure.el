(use-package clojure-mode
  :ensure t
  :init
  (add-hook 'clojure-mode-hook #'yas-minor-mode))

(use-package cider
  :ensure t
  :init
  (setq cider-overlays-use-font-lock t)
  (setq cider-repl-history-file "/home/zudov/.emacs.d/cider_history")
  (setq nrepl-use-ssh-fallback-for-remote-hosts t))

(use-package clj-refactor
  :ensure t)
