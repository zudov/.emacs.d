(add-to-list 'default-frame-alist '(font . "Pragmata Pro"))
(set-frame-font "Pragmata Pro")

(ensure-package-installed 'solarized-theme)

(load-theme 'solarized-dark t)
(setq solarized-high-contrast-mode-line t)
(setq solarized-distinct-fringe-background t)

(global-hl-line-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
