(use-package org
  :ensure t
  :bind ("C-c l" . org-store-link)
	("C-c a" . org-agenda)
  :init (setq org-log-done t))
