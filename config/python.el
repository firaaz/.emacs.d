;;; -*- lexical-binding: t -*-

(use-package ms-python
  :after lsp-mode
  :straight (:host github :repo "xhcoding/ms-python")
  :config (add-hook 'python-mode-hook #'lsp))
