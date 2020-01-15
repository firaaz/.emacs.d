;;; -*- lexical-binding: t -*-

(use-package ivy
  :init
  (setq ivy-initial-inputs-alist nil)
  :config
  (ivy-mode 1))

(use-package swiper
  :after ivy)

(use-package counsel
  :after swiper
  :config
  (counsel-mode))
