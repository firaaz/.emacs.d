;;; -*- lexical-binding: t -*-

(use-package haskell-mode)

(use-package lsp-haskell
  :after haskell-mode
  :init (add-hook 'haskell-mode-hook #'lsp))

