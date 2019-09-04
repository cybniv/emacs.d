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
   ;; inf-ruby haml-mode yard-mode
   ;; web-mode ruby-tools ruby-hash-syntax rspec-mode
   ;;  org-tree-slide
   ;; lua-mode js2-mode


(use-package org
  :straight org-plus-contrib)

(use-package helm
  :init
  (progn
    (require 'helm-config)
    (helm-mode)))

(use-package magit)

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

(use-package markdown-mode
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

(use-package mu4e
  :straight nil ;; comes via arch package
  :init
  (progn
    (require 'org-mu4e) ;; mu4e org-store-link
    )
  :custom
  (mu4e-alert-interesting-mail-query "flag:unread AND NOT flag:trashed AND NOT flag:list")
  (mu4e-alert-style 'libnotify)
  (mu4e-attachment-dir "***REMOVED******REMOVED***/Downloads.tmp")
  (mu4e-auto-retrieve-keys t)
  (mu4e-bookmarks
   '(("flag:unread AND NOT flag:trashed" "Unread messages" 117)
     ("date:today..now" "Today's messages" 116)
     ("date:7d..now" "Last 7 days" 119)
     ("flag:unread AND NOT flag:trashed AND NOT flag:list" "not MailingLists unread" 110)
     ("list:fulldisclosure.seclists.org OR list:arch-security.archlinux.org OR list:dev.nmap.org OR list:bugtraq.list-id.securityfocus.com OR list:bugtraq@securityfocus.com" "SecLists" 115)))
  (mu4e-change-filenames-when-moving t)
  (mu4e-compose-complete-only-personal nil)
  (mu4e-compose-signature "Cheers\n***REMOVED***")
  (mu4e-context-policy 'pick-first)
  (mu4e-date-format-long "%a, %d.%b.%Y %H:%M:%S")
  (mu4e-display-update-status-in-modeline nil)
  (mu4e-get-mail-command "mbsync -a")
  (mu4e-headers-date-format "%a, %d.%b.%y")
  (mu4e-headers-fields
   '((:human-date . 15)
     (:flags . 6)
     (:size . 6)
     (:from . 23)
     (:subject)))
  (mu4e-headers-include-related t)
  (mu4e-headers-long-date-format "%a, %d.%b.%Y %H:%M:%S")
  (mu4e-headers-results-limit 500)
  (mu4e-headers-visible-flags
   '(flagged new passed replied seen attach encrypted signed unread))
  (mu4e-headers-visible-lines 20)
  (mu4e-index-update-in-background t)
  (mu4e-jump-to-list-min-freq 9)
  (mu4e-maildir "***REMOVED******REMOVED***/.mail")
  (mu4e-maildirs-extension-use-bookmarks t)
  (mu4e-sent-folder "/protonmail/Sent")
  (mu4e-trash-folder "/protonmail/Trash")
  (mu4e-update-interval 180)
  (mu4e-use-fancy-chars nil)
  (mu4e-user-mail-address-list
   '("***REMOVED***" "***REMOVED***" "***REMOVED***" "***REMOVED***" "***REMOVED***"))
  (mu4e-view-date-format "%a, %d.%b.%Y %H:%M:%S")
  (mu4e-view-html-plaintext-ratio-heuristic most-positive-fixnum)
  (mu4e-view-show-addresses t)
  (mu4e-view-show-images t)
  (mu4e-view-use-gnus nil)
  )

(use-package mu4e-maildirs-extension
  :defer t
  :requires mu4e
  :init (with-eval-after-load 'mu4e (mu4e-maildirs-extension-load)))

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

(use-package yaml-mode)
