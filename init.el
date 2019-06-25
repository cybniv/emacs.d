(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("melpa" . "https://melpa.org/packages/")))

(when (eval-when-compile (version< emacs-version "27"))
  (package-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine (quote xetex))
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Atril")
     (output-html "xdg-open"))))
 '(auto-save-list-file-prefix "/tmp/.emacs/auto-save-list/.saves-")
 '(backup-directory-alist (quote (("." . "/tmp/emacs/backups"))))
 '(beacon-mode t)
 '(blacken-skip-string-normalization t)
 '(browse-url-browser-function (quote browse-url-default-browser))
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (ewal-spacemacs-modern)))
 '(custom-safe-themes t)
 '(delete-old-versions t)
 '(describe-char-unidata-list
   (quote
    (name old-name general-category decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment)))
 '(dired-listing-switches "-alhv")
 '(dired-ls-F-marks-symlinks t)
 '(dired-use-ls-dired t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(doc-view-scale-internally nil)
 '(doom-Iosvkem-brighter-modeline t)
 '(eshell-visual-commands
   (quote
    ("vi" "screen" "top" "less" "more" "lynx" "ncftp" "pine" "tin" "trn" "elm" "htop")))
 '(exwm-layout-show-all-buffers t)
 '(exwm-workspace-show-all-buffers t)
 '(fit-window-to-buffer-horizontally t)
 '(flycheck-emacs-lisp-load-path (quote inherit))
 '(frames-only-mode-kill-frame-when-buffer-killed-buffer-list
   (quote
    ("*RefTeX Select*" "*Help*" "*Popup Help*" "*Completions*" "widget-choose")))
 '(frames-only-mode-use-window-functions
   (quote
    (calendar report-emacs-bug checkdoc-show-diagnostics checkdoc widget-choose)))
 '(global-company-mode t)
 '(gnus-dired-mail-mode (quote mu4e-user-agent))
 '(gnutls-algorithm-priority "PFS")
 '(gnutls-min-prime-bits 2048)
 '(gnutls-trustfiles
   (quote
    ("/etc/ssl/certs/ca-certificates.crt" "/etc/ssl/cert.pem")))
 '(helm-autoresize-max-height 0)
 '(helm-autoresize-min-height 20)
 '(helm-autoresize-mode t)
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-mode t)
 '(helm-projectile-fuzzy-match nil)
 '(indent-tabs-mode nil)
 '(inf-ruby-default-implementation "pry")
 '(inhibit-startup-screen t)
 '(ispell-dictionary "deutsch")
 '(magit-diff-use-overlays nil)
 '(message-citation-line-format "On %d %b %Y at %R %z, %f wrote:
")
 '(message-citation-line-function (quote message-insert-formatted-citation-line))
 '(message-send-mail-function (quote smtpmail-send-it))
 '(mml-secure-key-preferences
   (quote
    ((OpenPGP
      (sign)
      (encrypt
       ("***REMOVED***" "***REMOVED***")
       ("***REMOVED***" "***REMOVED***")))
     (CMS
      (sign)
      (encrypt)))))
 '(mml-secure-openpgp-encrypt-to-self t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(mu4e-alert-interesting-mail-query "flag:unread AND NOT flag:trashed AND NOT flag:list")
 '(mu4e-alert-style (quote libnotify))
 '(mu4e-attachment-dir "***REMOVED******REMOVED***/Downloads")
 '(mu4e-auto-retrieve-keys t)
 '(mu4e-bookmarks
   (quote
    (("flag:unread AND NOT flag:trashed" "Unread messages" 117)
     ("date:today..now" "Today's messages" 116)
     ("date:7d..now" "Last 7 days" 119)
     ("flag:unread AND NOT flag:trashed AND NOT flag:list" "not MailingLists unread" 110)
     ("list:fulldisclosure.seclists.org OR list:arch-security.archlinux.org OR list:dev.nmap.org OR list:bugtraq.list-id.securityfocus.com OR list:bugtraq@securityfocus.com" "SecLists" 115))))
 '(mu4e-change-filenames-when-moving t)
 '(mu4e-compose-complete-only-personal nil)
 '(mu4e-compose-signature "Cheers
***REMOVED***
")
 '(mu4e-context-policy (quote pick-first))
 '(mu4e-date-format-long "%a, %d.%b.%Y %H:%M:%S")
 '(mu4e-display-update-status-in-modeline nil)
 '(mu4e-drafts-folder "/mborg/Drafts")
 '(mu4e-get-mail-command "mbsync -a")
 '(mu4e-headers-date-format "%a, %d.%b.%y")
 '(mu4e-headers-fields
   (quote
    ((:human-date . 15)
     (:flags . 6)
     (:size . 6)
     (:from . 23)
     (:subject))))
 '(mu4e-headers-include-related t)
 '(mu4e-headers-long-date-format "%a, %d.%b.%Y %H:%M:%S")
 '(mu4e-headers-results-limit 500)
 '(mu4e-headers-visible-flags
   (quote
    (flagged new passed replied seen attach encrypted signed unread)))
 '(mu4e-headers-visible-lines 20)
 '(mu4e-index-update-in-background t)
 '(mu4e-jump-to-list-min-freq 9)
 '(mu4e-maildir "***REMOVED******REMOVED***/.mail/")
 '(mu4e-maildirs-extension-use-bookmarks t)
 '(mu4e-sent-folder "/mborg/Sent")
 '(mu4e-trash-folder "/mborg/Trash")
 '(mu4e-update-interval 180)
 '(mu4e-use-fancy-chars nil)
 '(mu4e-user-mail-address-list
   (quote
    ("***REMOVED***" "***REMOVED***" "***REMOVED***" "***REMOVED***" "***REMOVED***")))
 '(mu4e-view-date-format "%a, %d.%b.%Y %H:%M:%S")
 '(mu4e-view-html-plaintext-ratio-heuristic most-positive-fixnum)
 '(mu4e-view-show-addresses t)
 '(mu4e-view-show-images t)
 '(mu4e-view-use-gnus nil)
 '(org-agenda-files
   (quote
    ("~/Org/schulden.org" "***REMOVED******REMOVED***/Org/uni.org" "***REMOVED******REMOVED***/Org/tech.org" "***REMOVED******REMOVED***/Org/system_maintenance.org" "***REMOVED******REMOVED***/Org/***REMOVED***.org" "***REMOVED******REMOVED***/Org/ideas.org" "***REMOVED******REMOVED***/Org/infosec.org" "***REMOVED******REMOVED***/Org/ltx.org" "***REMOVED******REMOVED***/Org/wohnungen.org" "***REMOVED******REMOVED***/Org/workflow.org")))
 '(org-agenda-skip-deadline-prewarning-if-scheduled t)
 '(org-agenda-skip-scheduled-if-deadline-is-shown t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-sorting-strategy
   (quote
    ((agenda deadline-up priority-down)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep))))
 '(org-agenda-span 27)
 '(org-agenda-time-leading-zero t)
 '(org-agenda-todo-ignore-deadlines (quote all))
 '(org-agenda-todo-ignore-scheduled (quote all))
 '(org-agenda-window-setup (quote other-frame) t)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (ruby . t))))
 '(org-capture-templates
   (quote
    (("t" "todo" entry
      (file+headline "~/.org/todo.org" "Tasks")
      "* TODO [#A] %?
SCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))
%a
     ")
     ("x" "tech" entry
      (file+headline "~/.org/tech.org" "Tasks")
      "* TODO [#A] %?
SCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))
%a
     ")
     ("u" "uni" entry
      (file+headline "~/.org/uni.org" "Tasks")
      "* TODO [#A] %?
SCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))
%a
"))))
 '(org-clock-sound t)
 '(org-deadline-warning-days 7)
 '(org-hide-emphasis-markers t)
 '(org-html-checkbox-type (quote unicode))
 '(org-journal-date-format "%A, %d %B %Y")
 '(org-journal-dir "~/Org/journal/")
 '(org-log-done nil)
 '(org-log-repeat (quote time))
 '(org-modules (quote (org-docview org-gnus org-info org-irc org-notify)))
 '(org-startup-indented t)
 '(org-tree-slide-fold-subtrees-skipped nil)
 '(package-selected-packages
   (quote
    (company-terraform terraform-mode ewal-evil-cursors ewal-spacemacs-themes ewal todoist rfc-mode terminal-here dockerfile-mode org-journal flycheck browse-at-remote magit-gitflow slack frames-only-mode editorconfig gnu-elpa-keyring-update monokai-pro-theme blacken doom-modeline tern emojify use-package disk-usage pkgbuild-mode mu4e-maildirs-extension auth-source-pass pass password-store projectile-rails which-key iedit snazzy-theme sane-term magit pacfiles-mode robe deadgrep pdf-tools pdfgrep ibuffer-projectile helm mu4e-alert markdown-mode chruby inf-ruby auctex company-auctex haml-mode zenburn-theme yard-mode yaml-mode web-mode solarized-theme ruby-tools ruby-hash-syntax rspec-mode rainbow-delimiters paradox org-tree-slide org-plus-contrib nord-theme monokai-theme moe-theme lua-mode js2-mode gruvbox-theme doom-themes coffee-mode base16-theme ag)))
 '(paradox-column-width-package 27)
 '(paradox-execute-asynchronously nil)
 '(paradox-github-token t)
 '(pkgbuild-update-sums-on-save nil)
 '(pkgbuild-user-full-name "***REMOVED***")
 '(pkgbuild-user-mail-address "***REMOVED***")
 '(projectile-cache-file "***REMOVED******REMOVED***/.cache/emacs/projectile.cache")
 '(projectile-completion-system (quote helm))
 '(projectile-enable-caching t)
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "fixtures" "vendor/bundle" "vendor/cache")))
 '(projectile-globally-ignored-file-suffixes (quote (".pyc")))
 '(projectile-project-search-path (quote ("~/ltx")))
 '(projectile-switch-project-action (quote projectile-dired))
 '(psession-autosave-mode t)
 '(psession-elisp-objects-default-directory "~/.cache/emacs/psession/")
 '(psession-mode t)
 '(psession-savehist-mode t)
 '(recentf-max-menu-items 27)
 '(recentf-max-saved-items 100)
 '(recentf-mode t)
 '(recentf-save-file "~/.cache/emacs/recentf")
 '(rst-indent-field 4)
 '(rst-indent-literal-minimized 4)
 '(rst-indent-literal-normal 4)
 '(ruby-insert-encoding-magic-comment nil)
 '(safe-local-variable-values
   (quote
    ((TeX-command-extra-options . "-shell-escape")
     (TeX-command-extra-options . -shell-escape))))
 '(savehist-file "~/.cache/emacs/history")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(smtpmail-debug-info t)
 '(smtpmail-default-smtp-server "smtp.mailbox.org")
 '(smtpmail-smtp-server "smtp.mailbox.org")
 '(smtpmail-smtp-service 465)
 '(smtpmail-stream-type (quote ssl))
 '(solarized-distinct-doc-face t)
 '(solarized-distinct-fringe-background t)
 '(solarized-use-less-bold t)
 '(term-buffer-maximum-size 4096)
 '(terminal-here-terminal-command (quote ("alacritty")))
 '(tool-bar-mode nil)
 '(tramp-auto-save-directory "~/.cache/emacs/tramp/")
 '(tramp-default-method "ssh")
 '(tramp-persistency-file-name "***REMOVED******REMOVED***/.cache/emacs/tramp_connection_history")
 '(transient-history-file "~/.cache/emacs/transient/history.el")
 '(truncate-lines t)
 '(uniquify-strip-common-suffix nil)
 '(url-configuration-directory "~/.cache/emacs/url")
 '(url-history-file "~/.cache/emacs/url_history")
 '(user-full-name "***REMOVED***")
 '(user-mail-address "***REMOVED***")
 '(visible-bell t)
 '(whitespace-style
   (quote
    (face trailing tabs spaces lines lines-tail empty indentation::tab indentation::space indentation big-indent space-after-tab space-before-tab space-mark tab-mark newline-mark)))
 '(word-wrap t))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; start transparent
 ;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
 ;;(set-frame-parameter (selected-frame) 'alpha <both>)
 (set-frame-parameter (selected-frame) 'alpha '(95 . 95))
(add-to-list 'default-frame-alist '(alpha . (95 . 95)))

;; load external configs
(load "~/.emacs.d/init_packages.el")
(load "~/.emacs.d/load.el")
(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/hooks.el")


(setq mu4e-contexts
      `( ,(make-mu4e-context
           :name "mborg"
           :enter-func (lambda () (mu4e-message "switching to private context"))
           ;; :leave-func (lambda () (mu4e-message "Leaving Private context"))
           ;; we match based on the contact-fields of the message
           :match-func (lambda (msg)
                         (when msg
                           (string-match-p "^/mborg" (mu4e-message-field msg :maildir))))
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

         ,(make-mu4e-context
           :name "uni"
           :enter-func (lambda () (mu4e-message "switching to studserv context"))
           ;; no leave-func
           ;; we match based on the maildir of the message
           ;; this matches maildir /Arkham and its sub-directories
           :match-func (lambda (msg)
                         (when msg
                           (string-match-p "^/studserv" (mu4e-message-field msg :maildir))))
           :vars '( ( user-mail-address       . "***REMOVED***" )
                    ( user-full-name          . "***REMOVED***" )
                    ( mu4e-compose-signature  .
                                              (concat
                                              "Mit freundlichen Grüßen\n"
                                              "***REMOVED***\n"))))
         ))

(add-to-list 'mu4e-view-actions
  '("ViewInBrowser" . mu4e-action-view-in-browser) t)
(put 'dired-find-alternate-file 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#1b1d1e" :foreground "#dddddd" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "CTDB" :family "FuraCode Nerd Font Mono")))))

(require 'man)
(set-face-attribute 'Man-overstrike nil :inherit font-lock-type-face :bold t)
(set-face-attribute 'Man-underline nil :inherit font-lock-keyword-face :underline t)
