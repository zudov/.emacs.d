(ensure-package-installed
 'clojure-mode
 'cider
 'clj-refactor)

(setq cider-overlays-use-font-lock t)

(require 'clj-refactor)

(add-hook 'clojure-mode-hook
	  (lambda ()
	    (clj-refactor-mode 1)))

(add-hook 'clojure-mode-hook #'yas-minor-mode)
(setq cider-repl-history-file "/home/zudov/.emacs.d/cider_history")
