;;; -*- lexical-binding: t -*-
(use-package which-key
  :init (which-key-mode))

(use-package doom-themes)

(use-package doom-modeline
  :hook (after-init . doom-modeline-mode))

(use-package ace-window
  :config (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  :bind ("C-x o" . ace-window))

(use-package heaven-and-hell
  :init
  (setq heaven-and-hell-theme-type 'light)
  (setq heaven-and-hell-themes
	'((light . doom-nord-light)
	  (dark . doom-dark+)))
  (setq heaven-and-hell-load-theme-no-confirm t)
  :hook (after-init . heaven-and-hell-init-hook)
  :bind ("C-C t t" . heaven-and-hell-toggle-theme))

(use-package rainbow-mode)
