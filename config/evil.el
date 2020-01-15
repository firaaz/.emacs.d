;;; -*- lexical-binding: t -*-

(use-package evil
  :init
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  (setq evil-want-Y-yank-to-eol t)
  :hook
  (after-init . evil-mode))

(use-package evil-surround
  :after evil
  :hook (evil-mode . global-evil-surround-mode))

(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd "<C-i>") 'evil-jump-forward)
  ;; unbind M-., SPC, RET and TAB from evil-states,
  ;; pass them down to Emacs keymaps
  (define-key evil-normal-state-map (kbd "M-.") nil)
  (define-key evil-motion-state-map (kbd "SPC") nil)
  (define-key evil-motion-state-map (kbd "RET") nil)
  (define-key evil-motion-state-map (kbd "TAB") nil)
  (define-key evil-insert-state-map (kbd "C-w") 'evil-window-map))
