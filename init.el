(package-initialize)
(org-babel-load-file "~/.emacs.d/config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("428754d8f3ed6449c1078ed5b4335f4949dc2ad54ed9de43c56ea9b803375c23" default)))
 '(package-selected-packages
   (quote
    (counsel-spotify evil-commentary apropospriate-theme evil-unimpaired evil-surround quelpa-use-package quelpa all-the-icons treemacs-magit treemacs-projectile treemacs-evil treemacs smartparens rainbow-delimiters beacon helm-spotify-plus yasnippet-snippets yasnippet evil-matchit evil-magit evil-goggles helm-smex helm-fuzzier helm-flx helm-swoop smex evil-collection evil evil-mode company-box company-lsp lsp-ui lsp-mode company helm-projectile general helm magit which-key rtags use-package doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-goggles-change-face ((t (:inherit diff-removed))))
 '(evil-goggles-delete-face ((t (:inherit diff-removed))))
 '(evil-goggles-paste-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-add-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-change-face ((t (:inherit diff-changed))))
 '(evil-goggles-undo-redo-remove-face ((t (:inherit diff-removed))))
 '(evil-goggles-yank-face ((t (:inherit diff-changed)))))
