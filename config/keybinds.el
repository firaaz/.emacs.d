;;; -*- lexical-binding: t -*-

(defun my/config-file ()
  "Opens a fuzzy matching minibuffer into config folder"
  (interactive)
  (counsel-projectile (cd "~/.emacs.d")))

(global-set-key (kbd "C-c f p") 'my/config-file)
