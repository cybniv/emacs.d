;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) temporary-file-directory))
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)

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
 '(blacken-skip-string-normalization t)
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes t)
 '(delete-old-versions t)
 '(describe-char-unidata-list
   (quote
    (name old-name general-category decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment)))
 '(dired-listing-switches "-laGh1v --group-directories-first")
 '(dired-ls-F-marks-symlinks t)
 '(dired-use-ls-dired t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(doc-view-scale-internally nil)
 '(eshell-visual-commands
   (quote
    ("vi" "screen" "top" "less" "more" "lynx" "ncftp" "pine" "tin" "trn" "elm" "htop")))
 '(fit-window-to-buffer-horizontally t)
 '(gnutls-algorithm-priority "PFS")
 '(gnutls-min-prime-bits 2048)
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-ff-guess-ffap-urls nil)
 '(helm-mode t)
 '(inf-ruby-default-implementation "pry")
 '(inhibit-startup-screen t)
 '(ispell-dictionary "deutsch")
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(message-citation-line-format "On %d %b %Y at %R %z, %f wrote:
")
 '(message-citation-line-function (quote message-insert-formatted-citation-line))
 '(message-send-mail-function (quote smtpmail-send-it))
 '(mml-enable-flowed nil)
 '(mml-secure-key-preferences
   (quote
    ((OpenPGP
      (sign)
      (encrypt
       ("***REMOVED***" "***REMOVED***")
       ("***REMOVED***" "***REMOVED***")
       ("***REMOVED***" "***REMOVED***")))
     (CMS
      (sign)
      (encrypt)))))
 '(mml-secure-openpgp-encrypt-to-self t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (ruby . t))))
 '(org-deadline-warning-days 7)
 '(org-hide-emphasis-markers t)
 '(org-html-checkbox-type (quote unicode))
 '(org-journal-date-format "%A, %d %B %Y")
 '(org-journal-dir "~/Org/Journal/")
 '(org-log-done nil)
 '(org-log-repeat (quote time))
 '(org-modules (quote (org-docview org-gnus org-info org-irc org-notify)))
 '(org-startup-indented t)
 '(org-tree-slide-fold-subtrees-skipped nil)
 '(pkgbuild-update-sums-on-save nil)
 '(pkgbuild-user-full-name "***REMOVED***")
 '(pkgbuild-user-mail-address "***REMOVED***")
 '(projectile-completion-system (quote helm))
 '(projectile-enable-caching t)
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "fixtures" "vendor/bundle" "vendor/cache" "locale")))
 '(projectile-globally-ignored-file-suffixes (quote (".pyc")))
 '(projectile-project-search-path (quote ("~/***REMOVED***")))
 '(projectile-switch-project-action (quote projectile-dired))
 '(recentf-max-menu-items 27)
 '(recentf-max-saved-items nil)
 '(recentf-mode t)
 '(recentf-save-file "~/.cache/emacs/recentf")
 '(ripgrep-executable "***REMOVED******REMOVED***/.cargo/bin/rg")
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
 '(sort-fold-case t t)
 '(straight-recipes-emacsmirror-use-mirror t)
 '(straight-repository-branch "develop")
 '(straight-use-package-by-default t)
 '(temporary-file-directory "/run/user/1000")
 '(term-buffer-maximum-size 4096)
 '(tool-bar-mode nil)
 '(tramp-auto-save-directory "~/.cache/emacs/tramp/")
 '(tramp-default-method "ssh")
 '(tramp-persistency-file-name "~/.cache/emacs/tramp_connection_history")
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
   (quote
    (trailing tabs lines newline empty indentation::tab indentation::space indentation big-indent space-after-tab space-before-tab space-mark tab-mark newline-mark)))
 '(word-wrap t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; load
(require 'packages)
(require 'functions)
(require 'keys)
(require 'hooks)
