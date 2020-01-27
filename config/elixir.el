;;; -*- lexical-binding: t -*-

(use-package elixir-mode)

(use-package alchemist)


;; install credo in the elixir project
(use-package flycheck-credo)

(add-to-list 'auto-mode-alist '("\\.elixer2\\.'" . elixir-mode))

