;;; -*- lexical-binding: t -*-

;; (use-package auctex)
(use-package latex-preview-pane)
(use-package company-auctex
  :after (company))
(use-package company-reftex
  :after (company))
(use-package company-math
  :after (company))
(use-package ivy-bibtex
  :after (ivy))
