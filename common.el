(ensure-package-installed
 'helm)

(helm-mode 1)

;; Some global key translations

(define-key key-translation-map [?\C-x] [?\C-u])
(define-key key-translation-map [?\C-u] [?\C-x])

(define-key key-translation-map [?\M-x] [?\M-u])
(define-key key-translation-map [?\M-u] [?\M-x])



(ensure-package-installed 'keyfreq)
(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)


(ensure-package-installed 'avy 'ace-window)

(global-set-key (kbd "C-.") 'ace-window)
(global-set-key (kbd "C-,") 'avy-goto-word-or-subword-1)
(setq aw-keys '(?u ?h ?e ?t ?o ?n ?a ?s))
(setq avy-keys '(?u ?h ?e ?t ?o ?n ?a ?s))
