;;; -*- lexical-binding: t -*-

(use-package emmet-mode)

(use-package web-mode
  :config
  ())

(use-package company-web)

(use-package css-mode)

(use-package less-css-mode)

(use-package counsel-css)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

