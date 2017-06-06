(setq id-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'prompt)
(setq ido-file-extensions-order
      '(;; PLs
	".hs" ".purs" ".clj" ".el" ".rs" ".py" ".js"
        ;; DSLs	
	".html" ".css" ".less" ".sass" ".sql"
	;; Docs
	".org" ".md" ".txt"
        ;; Configs
        ".cabal"
	;; Structured data
	".yaml" ".json"))
(ido-mode 1)
