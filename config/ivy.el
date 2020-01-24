;;; -*- lexical-binding: t -*-

(use-package ivy
  :init
  (setq ivy-initial-inputs-alist nil)
  :config
  (ivy-mode))

(use-package counsel
  :after ivy
  :config
  (counsel-mode))
