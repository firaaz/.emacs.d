(setq package-enable-at-startup nil
      package-archives '(("elpa" . "https://elpa.gnu.org/packages/")
                        ("melpa" . "https://melpa.org/packages/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package quelpa
  :init (setq quelpa-upgrade-p t))
(use-package quelpa-use-package)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(global-display-line-numbers-mode)
(setq-default display-line-numbers-type 'relative
	      display-line-numbers-current-absolute t
	      display-line-numbers-width 3
	      display-line-numbers-widen t)

(use-package doom-themes
  :config
  (load-theme 'doom-gruvbox t))

(defalias 'yes-or-no-p 'y-or-n-p)

(setq backup-directory-alist '(("." . "~/.saves"))
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 10
      kept-old-versions 10
      version-control t)

(setq gc-cons-threshold 10000000)

(add-hook 'after-init-hook
	  (lambda ()
	    (setq gc-cons-threshold 10000000)
	    (message "gc-cons-threshold restored to %S"
		     gc-cons-threshold)))

(setq inhibit-startup-screen t
      initial-buffer-choice nil)

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(prefer-coding-system 'utf-8)

(use-package which-key
  :config (which-key-mode))

(use-package evil
  :init
  (setq evil-want-integration t
        evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package evil-goggles
  :after evil
  :config (progn
            (evil-goggles-mode)
            (evil-goggles-use-diff-faces)))

(use-package evil-magit
  :after evil :config (require 'evil-magit))

(use-package evil-matchit
  :after evil
  :config
  (global-evil-matchit-mode 1))

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(use-package evil-commentary
  :config
  (evil-commentary-mode))

(use-package flycheck
  :init (global-flycheck-mode))

(use-package flycheck-pos-tip
  :after flycheck
  :config (flycheck-pos-tip-mode))

(use-package magit)

(use-package helm
  :init
  (setq helm-follow-mode-persistent t
        helm-autoresize-max-height 40
        helm-display-header-line nil
        helm-display-header-line nil)

  :config
  (require 'helm-config)
  (helm-autoresize-mode t)
  (add-hook 'helm-minibuffer-set-up-hook 'helm-hide-minibuffer-maybe)
  (helm-mode t)
  (helm-flx-mode 1)
  (helm-fuzzier-mode 1))

(use-package smex)
(use-package helm-swoop)
(use-package helm-flx)
(use-package helm-fuzzier)
(use-package helm-smex)
(use-package dash)

(use-package helm-projectile
  :config
  (projectile-mode t)
  (helm-projectile-on))

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-require-match 'never
        company-minimum-prefix-lenght 2
        company-tooltip-align-annotations t
        company-idle-delay 1
        company-tooltip-limit 20
        global-company-mode t))

(use-package lsp-mode
  :hook
  ((python-mode . lsp)
   (c-mode . lsp)
   (java-mode . lsp)
   (sh-mode . lsp))

  :config
  (setq lsp-prefer-flymake nil
        lsp-enable-snippet t
        lsp-auto-execute-action t
        lsp-eldoc-render-all t
        lsp-enable-completion-at-point t
        lsp-enable-xref t
        lsp-enable-indentation t))

(use-package lsp-ui
  :after lsp-mode
  :hook
  (lsp-mode . lsp-ui-mode))

(use-package company-lsp
  :after '(company lsp-mode)
  :config
  (setq company-lsp-cache-candidates t
        company-lsp-async t
        company-lsp-enable-snippet t)
  (push 'company-lsp company-backends))

(use-package yasnippet
  :config (yas-global-mode))

(defun company-mode-with-yas (backend)
  (if (and (listp backend) (member 'company-yasnippet backend))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))
(use-package yasnippet-snippets
  :after '(yasnippet company)
  :config
  (yasnippet-snippets-initialize)
  (setq company-backends (mapchar #'company-mode-with-yas company-backends)))

(use-package helm-spotify-plus)

(use-package treemacs)

(use-package treemacs-evil
  :after '(treemacs evil))
(use-package treemacs-projectile
  :after '(treemacs projectile))
(use-package treemacs-magit
  :after '(treemacs magit))

(use-package all-the-icons)

(use-package beacon
  :config (beacon-mode 1))

(use-package rainbow-delimiters
  :hook 'prog-mode-hook)

(use-package smartparens
  :hook
  ('prog-mode-hook #'smartparens-mode)
  ('lisp-mode-hook #'smartparens-strict-mode))

(use-package lsp-python-ms)

(use-package lsp-java)

(use-package js2-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode)))

(use-package rustic)

(use-package general
  :config
  (general-define-key
   "M-x" 'helm-smex
   "M-c" 'helm-smex-major-mode-commands
   "C-x g" 'magit-status
   "M-p" 'projectile-command-map
   "C-x C-f" 'helm-find-files
   "C-;" 'helm-imenu
   "C-x m" 'helm-spotify-plus))
