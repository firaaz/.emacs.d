;;; -*- lexical-binding: t -*-

(defun my/fuzzy-project-file-finder (dir)
  "helper function for fuzzy finding of files"
  (counsel-projectile (cd dir)))

(defun my/config-file ()
  "Opens a fuzzy matching minibuffer into config folder"
  (interactive)
  (my/fuzzy-project-file-finder "~/.emacs.d/"))

(global-set-key (kbd "C-c f p") 'my/config-file)
