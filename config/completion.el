;;; -*- lexical-binding: t -*-

(use-package company
  :bind (:map company-active-map
	      ("C-n" . company-select-next)
	      ("C-p" . company-select-previous))
  :hook ((prog-mode . company-mode)))

(use-package company-tabnine)

(setq company-idle-delay 0
      company-show-numbers t)
