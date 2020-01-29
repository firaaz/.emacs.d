;;; -*- lexical-binding: t -*-

(use-package expand-region
  :bind
  ("C-=" . er/expand-region))

(use-package editorconfig
  :config
  :hook (prog-mode . editorconfig-mode))
(setq-default
 vc-follow-symlinks t
 save-interprogram-paste-before-kill t
 fill-column 80
 sentence-end-double-space nil
 word-wrap t
 indent-tabs-mode nil
 require-final-newline t
 tab-always-indent t
 tab-width 4)

(use-package smartparens
  :hook (after-init . smartparens-global-mode)
  :config
  (require 'smartparens-config)
  :bind
  ("C-)" . sp-forward-slurp-sexp)
  ("M-)" . sp-forward-barf-sexp)
  ("C-(" . sp-backward-slurp-sexp)
  ("M-(" . sp-backward-barf-sexp))


;; have to use straight-use-package to download from github (idky)
;; installed exactly as https://github.com/ganmacs/emacs-surround instructs
(straight-use-package
  '(emacs-surround
    :host github
    :repo "ganmacs/emacs-surround"))

(require 'emacs-surround)
(global-set-key (kbd "C-q") 'emacs-surround) ; originally quoted-insert, use M-x to use it

(use-package undo-tree)
