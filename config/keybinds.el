;;; -*- lexical-binding: t -*-

(defun my/fuzzy-project-file-finder (dir)
  "helper function for fuzzy finding of files"
  (counsel-projectile (cd dir)))

(defun my/config-file ()
  "Opens a fuzzy matching minibuffer into config folder"
  (interactive)
  (my/fuzzy-project-file-finder "~/.emacs.d/"))


(global-set-key (kbd "C-c f p") 'my/config-file)
(global-set-key (kbd "C-x w") 'fixup-whitespace)
(global-set-key (kbd "C-c t l") (lambda () (interactive) (linum-mode))) ; to toggle line numbers (why is toggle not working)
