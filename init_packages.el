;; bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
   ;; '(projectile treemacs-projectile treemacs-magit
   ;; treemacs helm-projectile org-projectile-helm org-projectile
   ;; projectile-ripgrep tern helm-dash
   ;; weechat terraform-mode dockerfile-mode
   ;; browse-at-remote 
   ;;  blacken disk-usage pkgbuild-mode
   ;; auth-source-pass pass password-store
   ;; iedit pacfiles-mode robe
   ;; pdfgrep mu4e-alert chruby
   ;; inf-ruby haml-mode yard-mode yaml-mode
   ;; web-mode ruby-tools ruby-hash-syntax rspec-mode
   ;; rainbow-delimiters paradox org-tree-slide
   ;; lua-mode js2-mode

(use-package helm
  :init
  (progn
    (require 'helm-config)
    (helm-mode)))

(use-package atomic-chrome 
  :config
  (atomic-chrome-start-server)
  (setq atomic-chrome-buffer-open-style 'frame)
  )

(use-package deadgrep)

(use-package dracula-theme
  :init (load-theme 'dracula t))

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package elfeed)

(use-package elfeed-org
  :after elfeed
  :config
  (elfeed-org)
  (setq rmh-elfeed-org-files (list "~/Org/elfeed.org")))

(use-package i3wm-config-mode
  :straight (i3wm-config-mode :type git
		      :host github
		      :repo "Alexander-Miller/i3wm-Config-Mode"))

(use-package magit)

(use-package markdown-mode
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

(use-package mu4e
  :straight nil
  :init
  (progn
    (require 'org-mu4e) ;; mu4e org-store-link
    ))

(use-package mu4e-maildirs-extension
  :defer t
  :requires mu4e
  :init (with-eval-after-load 'mu4e (mu4e-maildirs-extension-load)))

(use-package org
  :straight org-plus-contrib)

(use-package org-journal
  :after org
  :defer t
  :custom
  (org-journal-dir "~/Org/journal/")
  (org-journal-date-format "%A, %d %B %Y"))

(use-package pdf-tools
  :magic ("%PDF" . pdf-view-mode)
  :config
  (pdf-tools-install)
  (setq-default pdf-view-display-size 'fit-page))

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package rainbow-identifiers
  :init
  :config
  (add-hook 'prog-mode-hook #'rainbow-identifiers-mode))

(use-package which-key
  :config
  (which-key-mode +1))
