;;; -*- lexical-binding: t -*-

(use-package switch-window
  :bind ("C-x o" . switch-window)
  :config
  (setq switch-window-shortcut-style 'qwerty
        switch-window-qwerty-shortcuts '("a" "s" "d" "f" "g" "h" "j" "k" "l")))

(defun my/fuzzy-project-file-finder (dir)
  "helper function for fuzzy finding of files"
  (counsel-projectile (cd dir)))

(defun my/config-file ()
  "Opens a fuzzy matching minibuffer into config folder"
  (interactive)
  (my/fuzzy-project-file-finder "~/.emacs.d/"))

(global-set-key (kbd "C-c f p") 'my/config-file)
(global-set-key (kbd "C-x w") 'fixup-whitespace)
;; (global-set-key (kbd "C-c t l") (lambda () (interactive) (linum-mode))) ; to toggle line numbers (why is toggle not working)
