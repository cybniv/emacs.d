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
;; docs: https://jwiegley.github.io/use-package/keywords/

(use-package deadgrep)
(use-package docker-compose-mode)
(use-package dockerfile-mode)
(use-package dumb-jump
  :config
  (add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
  )
(use-package magit)
(use-package org
  :straight org-plus-contrib)
(use-package pacfiles-mode)
(use-package persp-projectile
  :requires projectile)
(use-package pkgbuild-mode)
(use-package projectile
  :bind-keymap
  ("M-p" . projectile-command-map)
  :config
  (projectile-mode +1))
(use-package rainbow-delimiters
  :hook prog-mode)
(use-package rainbow-identifiers
  :hook prog-mode)
(use-package terraform-mode)
(use-package undo-tree
  :init
  (setq undo-tree-visualizer-timestamps t)
  (setq undo-tree-visualizer-diff t)
  :config
  (global-undo-tree-mode))
(use-package which-key
  :config
  (setq which-key-idle-delay 0.5))
  (which-key-mode +1)
(use-package web-mode
  :mode ("\\.html$" . web-mode))
(use-package yaml-mode)

;; (use-package org-journal
;;   :after org
;;   :custom
;;   (org-journal-dir "~/Org/Journal/")
;;   (org-journal-date-format "%A, %d %B %Y"))

;; (use-package org-projectile
;;   :after org
;;   :bind (("C-c n p" . org-projectile-project-todo-completing-read)
;;          ("C-c c" . org-capture))
;;   :config
;;   (progn
;;     (org-projectile-per-project) ; per-repo todo files
;;     (setq org-projectile-per-project-filepath "TODO.ORG")
;;     (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
;;     (push (org-projectile-project-todo-entry) org-capture-templates))
;;   :ensure t)

(use-package helm
  :init
  (progn
    (require 'helm-config)
    (helm-mode)))

(use-package dash-at-point)

;; (use-package atomic-chrome
;;   :config
;;   (atomic-chrome-start-server)
;;   (setq atomic-chrome-buffer-open-style 'frame)
;;   )

(use-package dracula-theme
  ;; :straight (dracula-theme :type git
  ;; 			   :host github
  ;; 			   :repo "dracula/emacs"
  ;; 			   :branch "emacs-27")
  :init (load-theme 'dracula t))

(use-package editorconfig
  :config
  (editorconfig-mode 1))

;; (use-package i3wm-config-mode
;;   :straight (i3wm-config-mode :type git
;; 			      :host github
;; 			      :repo "Alexander-Miller/i3wm-Config-Mode"))

(use-package markdown-mode
  :mode (("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu/mu4e")
(use-package mu4e
  :straight nil ;; installed as system package
  :config
  (progn
    ;; (require 'org-mu4e) ;; mu4e org-store-link
    (add-to-list 'mu4e-view-actions
		 '("ViewInBrowser" . mu4e-action-view-in-browser) t)
    )
  (setq mu4e-contexts
   `( ,(make-mu4e-context
        :name "private"
        :enter-func (lambda () (mu4e-message "switching to private context"))
        ;; :leave-func (lambda () (mu4e-message "Leaving Private context"))
        ;; we match based on the contact-fields of the message
        :match-func (lambda (msg)
                      (when msg
                        (string-match-p "^/protonmail" (mu4e-message-field msg :maildir))))
        ;; :match-func (lambda (msg)
        ;;               (when msg
        ;;                 (mu4e-message-contact-field-matches msg
        ;;                                                     :to "***REMOVED***")))
        :vars '( ( user-mail-address      . "***REMOVED***"  )
                 ( user-full-name         . "***REMOVED***" )
                 ( mu4e-compose-signature .
                                          (concat
                                           "Sincerely\n"
                                           "***REMOVED***\n"))))
      ,(make-mu4e-context
        :name "***REMOVED***"
        :enter-func (lambda () (mu4e-message "switching to ***REMOVED*** context"))
        ;; no leave-func
        ;; we match based on the maildir of the message
        ;; this matches maildir /Arkham and its sub-directories
        :match-func (lambda (msg)
                      (when msg
                        (string-match-p "^/***REMOVED***" (mu4e-message-field msg :maildir))))
        :vars '( ( user-mail-address       . "***REMOVED******REMOVED***" )
                 ( user-full-name          . "***REMOVED***" )
                 ( mu4e-compose-signature  .
                                           (concat
                                            "\n"
                                            "***REMOVED***\n"
                                            ))))
      ))

  :custom
  (gnus-dired-mail-mode 'mu4e-user-agent)
  (mu4e-attachment-dir "~/Downloads.tmp")
  (mu4e-auto-retrieve-keys t)
  ;; (mu4e-bookmarks
  ;;  '(("flag:unread AND NOT flag:trashed" "Unread messages" 117)
  ;;    ("date:today..now" "Today's messages" 116)
  ;;    ("date:7d..now" "Last 7 days" 119)
  ;;    ("flag:unread AND NOT flag:trashed AND NOT flag:list" "not MailingLists unread" 110)
  ;;    ("list:fulldisclosure.seclists.org OR list:arch-security.archlinux.org OR list:dev.nmap.org OR list:bugtraq.list-id.securityfocus.com OR list:bugtraq@securityfocus.com" "SecLists" 115)))
  (mu4e-change-filenames-when-moving t)
  (mu4e-compose-complete-only-personal nil)
  (mu4e-compose-signature "Cheers\n***REMOVED***")
  (mu4e-context-policy 'pick-first)
  (mu4e-date-format-long "%a, %d.%b.%Y %H:%M:%S")
  (mu4e-headers-date-format "%a, %d.%b.%y")
  (mu4e-headers-fields
   '((:human-date . 15)
     (:flags . 6)
     (:size . 6)
     (:from . 23)
     (:subject)))
  (mu4e-headers-long-date-format "%a, %d.%b.%Y %H:%M:%S")
  (mu4e-headers-visible-flags
   '(flagged new passed replied seen attach encrypted signed unread))
  (mu4e-headers-visible-lines 20)
  (mu4e-jump-to-list-min-freq 9)
  (mu4e-sent-folder "/protonmail/Sent")
  (mu4e-trash-folder "/protonmail/Trash")
  (mu4e-user-mail-address-list
   '("***REMOVED***" "***REMOVED***"))
  (mu4e-view-date-format "%a, %d.%b.%Y %H:%M:%S")
  (mu4e-view-html-plaintext-ratio-heuristic most-positive-fixnum)
  (mu4e-view-show-addresses t)
  (mu4e-view-show-images t)
  (mu4e-view-use-gnus nil)
  )

;; (use-package pdf-tools
;;   :magic ("%PDF" . pdf-view-mode)
;;   :config
;;   (pdf-tools-install)
;;   (setq-default pdf-view-display-size 'fit-page))

(provide 'packages)
