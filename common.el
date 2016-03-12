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
