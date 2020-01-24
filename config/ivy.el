;;; -*- lexical-binding: t -*-

(use-package ivy
  :config
  (ivy-mode))

(use-package counsel
  :after ivy
  :config
  (counsel-mode))

(setq ivy-initial-inputs-alist nil)

