;;; -*- lexical-binding: t -*-
(use-package which-key
  :init (which-key-mode))

;; themes
(use-package doom-themes)
(use-package color-theme-sanityinc-tomorrow)

(use-package doom-modeline
  :hook (after-init . doom-modeline-mode))

(use-package heaven-and-hell
  :init
  (setq heaven-and-hell-theme-type 'dark)
  (setq heaven-and-hell-themes
	'((light . sanityinc-tomorrow-day)
	  (dark . sanityinc-tomorrow-bright)))
  (setq heaven-and-hell-load-theme-no-confirm t)
  :hook (after-init . heaven-and-hell-init-hook)
  :bind ("C-C t t" . heaven-and-hell-toggle-theme))

(use-package rainbow-mode)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package vi-tilde-fringe
  :hook (prog-mode . vi-tilde-fringe-mode))

(use-package writeroom-mode)
