(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(setq package-enable-at-startup nil)

(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it's not.
   Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
	 nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
	   (package-install package)
	 package)))
   packages))

;; Make sure to have downloaded archive description.
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; Activate installed packages
(package-initialize)

;; General packages
(ensure-package-installed
 'helm)

(helm-mode 1)

(defun sudo-edit (&optional arg)
  "Edit currently visited file as root.

With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))


;; Font settings
(add-to-list 'default-frame-alist '(font . "Pragmata Pro"))
(set-frame-font "Pragmata Pro")

;; Appearance settings
(ensure-package-installed
 'solarized-theme)

(load-theme 'solarized-dark t)
(setq solarized-high-contrast-mode-line t)
(setq solarized-distinct-fringe-background t)

(global-hl-line-mode 1)


;; Controls
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(load-file "~/.emacs.d/clojure.el")
;(load-file "~/.emacs.d/paredit.el")
(load-file "~/.emacs.d/rainbow.el")
(load-file "~/.emacs.d/smartparens.el")

