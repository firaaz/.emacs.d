(use-package eglot
  :init (setq eglot-put-doc-in-help-buffer t)
  :commands (eglot))

(use-package lsp-mode
  :defer t
  :init (setq lsp-auto-guess-root t))
  ; :hook (python-mode . (lambda () (setq lsp-enable-on-type-formatting nil))))

(use-package lsp-ui
  :after lsp-mode
  :init (setq lsp-ui-peek-always-show t
              lsp-ui-sideline-enable nil
              lsp-ui-doc-enable nil)
  :config
  (define-key lsp-ui-mode-map
    [remap xref-find-references]
    #'lsp-ui-peek-find-references))

(use-package company-lsp
  :commands (company-lsp))
