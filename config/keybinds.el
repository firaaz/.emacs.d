;;; -*- lexical-binding: t -*-

(defun my/config-file ()
  (interactive)
  (counsel-find-file "~/.emacs.d/"))

(global-set-key (kbd "C-c f p") 'my/config-file)
