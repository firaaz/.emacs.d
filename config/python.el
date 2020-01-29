;;; -*- lexical-binding: t -*-

(defvar +python-ipython-repl-args '("-i" "--simple-prompt"))

(use-package python
  :init
  ;; for those times when python2 is the default python
  (when (and (executable-find "python3")
             (setq python-shell-interpreter "python"))
    (setq python-shell-interpreter "python3"))
  (add-hook 'python-mode-hook
            (defun +python-use-correct-flycheck-executables-h ()
              "To make sure that the correct executables are used even when in virtual env"
              (save-excursion
                (goto-char (point-min))
                (save-match-data
                  (when (or (looking-at "#!/usr/bin/env \\(python[^ \n]\\)")
                            (looking-at "#!\\([^ \n]+python[^ \n]+\\)"))
                    (setq executable (substring-no-properties (match-string 1))))))
              (setq-local flycheck-python-pycompile-executable exectuable)
              (setq-local flycheck-python-pylint-executable "pylint")
              (setq-local flycheck-python-flake8-executable "flake*"))))

(use-package ms-python
  :after lsp-mode
  :straight
  (:host github :repo "xhcoding/ms-python")
  :config
  (add-hook 'python-mode-hook #'lsp))

(use-package pyimport)

(use-package py-isort)

(use-package anaconda-mode)

(use-package company-anaconda)

(use-package pip-requirements)          ; major mode for Pipfiles


