;;; -*- lexical-binding: t -*-

(use-package js2-mode
  :mode "\\.m?js\\'"
  :interpreter "node")


(use-package js2-refactor)

(use-package typescript-mode)
(use-package npm-mode)

(use-package nodejs-repl)
(use-package skewer-mode)

(use-package tide)


(use-package xref-js2)
