(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine 'xetex)
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Atril")
     (output-html "xdg-open")))
 '(blacken-skip-string-normalization t)
 '(column-number-mode t)
 '(compilation-message-face 'default)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes t)
 '(delete-old-versions t)
 '(describe-char-unidata-list
   '(name old-name general-category decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment))
 '(dired-listing-switches "-laGh1v --group-directories-first")
 '(dired-ls-F-marks-symlinks t)
 '(dired-use-ls-dired t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(doc-view-scale-internally nil)
 '(doom-Iosvkem-brighter-modeline t)
 '(eshell-visual-commands
   '("vi" "screen" "top" "less" "more" "lynx" "ncftp" "pine" "tin" "trn" "elm" "htop"))
 '(exwm-layout-show-all-buffers t)
 '(exwm-workspace-show-all-buffers t)
 '(fit-window-to-buffer-horizontally t)
 '(gnutls-algorithm-priority "PFS")
 '(gnutls-min-prime-bits 2048)
 '(gnutls-trustfiles '("/etc/ssl/certs/ca-certificates.crt" "/etc/ssl/cert.pem"))
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-ff-guess-ffap-urls nil)
 '(helm-mode t)
 '(helm-projectile-fuzzy-match nil)
 '(inf-ruby-default-implementation "pry")
 '(inhibit-startup-screen t)
 '(ispell-dictionary "deutsch")
 '(lsp-enable-snippet nil t)
 '(lsp-pyls-configuration-sources ["flake8"])
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(message-citation-line-format "On %d %b %Y at %R %z, %f wrote:
")
 '(message-citation-line-function 'message-insert-formatted-citation-line)
 '(message-send-mail-function 'smtpmail-send-it)
 '(mml-enable-flowed nil)
 '(mml-secure-key-preferences
   '((OpenPGP
      (sign)
      (encrypt
       ("***REMOVED***" "***REMOVED***")
       ("***REMOVED***" "***REMOVED***")
       ("***REMOVED***" "***REMOVED***")))
     (CMS
      (sign)
      (encrypt))))
 '(mml-secure-openpgp-encrypt-to-self t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control))))
 '(org-agenda-files
   '("~/Org/schulden.org" "***REMOVED******REMOVED***/Org/uni.org" "***REMOVED******REMOVED***/Org/tech.org" "***REMOVED******REMOVED***/Org/system_maintenance.org" "***REMOVED******REMOVED***/Org/***REMOVED***.org" "***REMOVED******REMOVED***/Org/ideas.org" "***REMOVED******REMOVED***/Org/infosec.org" "***REMOVED******REMOVED***/Org/ltx.org" "***REMOVED******REMOVED***/Org/wohnungen.org" "***REMOVED******REMOVED***/Org/workflow.org"))
 '(org-agenda-skip-deadline-prewarning-if-scheduled t)
 '(org-agenda-skip-scheduled-if-deadline-is-shown t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-sorting-strategy
   '((agenda deadline-up priority-down)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep)))
 '(org-agenda-span 27)
 '(org-agenda-time-leading-zero t)
 '(org-agenda-todo-ignore-deadlines 'all)
 '(org-agenda-todo-ignore-scheduled 'all)
 '(org-agenda-window-setup 'other-frame t)
 '(org-babel-load-languages '((emacs-lisp . t) (ruby . t)))
 '(org-deadline-warning-days 7)
 '(org-hide-emphasis-markers t)
 '(org-html-checkbox-type 'unicode)
 '(org-journal-date-format "%A, %d %B %Y")
 '(org-journal-dir "~/Org/Journal/")
 '(org-log-done nil)
 '(org-log-repeat 'time)
 '(org-modules '(org-docview org-gnus org-info org-irc org-notify))
 '(org-startup-indented t)
 '(org-tree-slide-fold-subtrees-skipped nil)
 '(pkgbuild-update-sums-on-save nil)
 '(pkgbuild-user-full-name "***REMOVED***")
 '(pkgbuild-user-mail-address "***REMOVED***")
 '(projectile-cache-file "***REMOVED******REMOVED***/.cache/emacs/projectile.cache")
 '(projectile-completion-system 'helm)
 '(projectile-enable-caching t)
 '(projectile-globally-ignored-directories
   '(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "fixtures" "vendor/bundle" "vendor/cache"))
 '(projectile-globally-ignored-file-suffixes '(".pyc"))
 '(projectile-project-search-path '("~/***REMOVED***"))
 '(projectile-switch-project-action 'projectile-dired)
 '(psession-autosave-mode t)
 '(psession-elisp-objects-default-directory "~/.cache/emacs/psession/")
 '(psession-mode t)
 '(psession-savehist-mode t)
 '(recentf-max-menu-items 27)
 '(recentf-max-saved-items nil)
 '(recentf-mode t)
 '(recentf-save-file "~/.cache/emacs/recentf")
 '(rst-indent-field 4)
 '(rst-indent-literal-minimized 4)
 '(rst-indent-literal-normal 4)
 '(ruby-insert-encoding-magic-comment nil)
 '(safe-local-variable-values
   '((TeX-command-extra-options . "-shell-escape")
     (TeX-command-extra-options . -shell-escape)))
 '(savehist-file "~/.cache/emacs/history")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(smtpmail-debug-info t)
 '(smtpmail-default-smtp-server "smtp.mailbox.org")
 '(smtpmail-smtp-server "smtp.mailbox.org")
 '(smtpmail-smtp-service 465)
 '(smtpmail-stream-type 'ssl)
 '(sort-fold-case t t)
 '(straight-recipes-emacsmirror-use-mirror t)
 '(straight-repository-branch "develop")
 '(straight-use-package-by-default t)
 '(term-buffer-maximum-size 4096)
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
 '(vc-follow-symlinks nil)
 '(visible-bell t)
 '(whitespace-style
   '(trailing tabs lines newline empty indentation::tab indentation::space indentation big-indent space-after-tab space-before-tab space-mark tab-mark newline-mark))
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

;; load
(load "~/.emacs.d/init_packages.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/hooks.el")

(put 'dired-find-alternate-file 'disabled nil)

;; workaround for 
;; Diff highlighting broken in emacs 27.0.50
;; https://github.com/magit/magit/issues/3986
(when (>= emacs-major-version 27)
  (cl-loop for f in (face-list)
           for face = (symbol-name f)
           when (and (string-match "\\`helm" face)
                     (ignore-errors
                       (face-attribute f :extend t)))
           do (set-face-attribute f nil :extend t)))

(require 'man)
(set-face-attribute 'Man-overstrike nil :inherit font-lock-type-face :bold t)
(set-face-attribute 'Man-underline nil :inherit font-lock-keyword-face :underline t)

;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) temporary-file-directory))
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "SF Mono" :foundry "APPL" :slant normal :weight normal :height 111 :width normal)))))

;; load
(require 'packages)
(require 'functions)
(require 'keys)
(require 'hooks)
