(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode))

(use-package evil-magit
  :after evil magit)

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))
