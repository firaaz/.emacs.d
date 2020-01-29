;;; -*- lexical-binding: t -*-

(use-package lsp-mode
  :defer t)

(use-package lsp-ui
  :init
  (setq lsp-ui-peek-always-show t
	lsp-ui-sideline-enable nil
	lsp-ui-doc-enable t))

(use-package company-lsp
  :commands (company-lsp))
