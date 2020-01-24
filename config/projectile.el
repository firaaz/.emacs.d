;;; -*- lexical-binding: t -*-

(use-package projectile
  :defer 5
  :bind-keymap ("C-c p" . projectile-command-map)
  :config (projectile-global-mode))

(use-package counsel-projectile
  :after (counsel projectile)
  :config (counsel-projectile-mode 1))
