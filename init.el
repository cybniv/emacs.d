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
 '(auto-save-default nil)
 '(blacken-skip-string-normalization t)
 '(column-number-mode t)
 '(compilation-message-face 'default)
 '(confirm-kill-emacs 'y-or-n-p)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes t)
 '(delete-by-moving-to-trash t)
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
 '(echo-keystrokes 0.1)
 '(eshell-visual-commands
   '("vi" "screen" "top" "less" "more" "lynx" "ncftp" "pine" "tin" "trn" "elm" "htop"))
 '(fit-window-to-buffer-horizontally t)
 '(gnutls-algorithm-priority "PFS")
 '(gnutls-min-prime-bits 2048)
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-ff-guess-ffap-urls nil)
 '(help-window-select t)
 '(inf-ruby-default-implementation "pry")
 '(inhibit-startup-screen t)
 '(initial-major-mode 'org-mode)
 '(initial-scratch-message nil)
 '(ispell-dictionary "deutsch")
 '(load-prefer-newer t)
 '(mac-mouse-wheel-smooth-scroll nil)
 '(magit-diff-use-overlays nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(message-citation-line-format "On %d %b %Y at %R %z, %f wrote:
")
 '(message-citation-line-function 'message-insert-formatted-citation-line)
 '(message-send-mail-function 'smtpmail-send-it)
 '(mml-secure-openpgp-encrypt-to-self t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control))))
 '(ns-alternate-modifier 'none)
 '(ns-command-modifier 'meta)
 '(ns-right-alternate-modifier nil)
 '(org-agenda-files
   '("~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org"))
 '(org-archive-location "archive/a_%s::b")
 '(org-babel-load-languages '((emacs-lisp . t) (ruby . t)))
 '(org-deadline-warning-days 7)
 '(org-hide-emphasis-markers t)
 '(org-html-checkbox-type 'unicode)
 '(org-journal-date-format "%A, %d %B %Y")
 '(org-journal-dir "~/Org/Journal/")
 '(org-log-done 'time)
 '(org-log-repeat 'time)
 '(org-startup-indented t)
 '(org-todo-keywords
   '((sequence "IDEA" "TODO" "INPROGRESS" "WAITING" "|" "DONE" "DISCARDED")))
 '(org-tree-slide-fold-subtrees-skipped nil)
 '(pkgbuild-update-sums-on-save nil)
 '(pkgbuild-user-full-name "***REMOVED***")
 '(pkgbuild-user-mail-address "***REMOVED***")
 '(projectile-completion-system 'helm)
 '(projectile-globally-ignored-directories
   '(".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "fixtures" "vendor/bundle" "vendor/cache" "locale" "LC_MESSAGES" ".venv" "node_modules"))
 '(projectile-globally-ignored-file-suffixes '(".pyc"))
 '(projectile-globally-ignored-files '("TAGS"))
 '(projectile-indexing-method 'alien)
 '(projectile-project-search-path '("~/pp"))
 '(projectile-switch-project-action 'projectile-dired)
 '(projectile-use-git-grep t)
 '(recentf-max-menu-items 27)
 '(recentf-max-saved-items nil)
 '(recentf-mode t)
 '(require-final-newline t)
 '(rst-indent-field 4)
 '(rst-indent-literal-minimized 4)
 '(rst-indent-literal-normal 4)
 '(ruby-insert-encoding-magic-comment nil)
 '(safe-local-variable-values '((TeX-command-extra-options . "-shell-escape")))
 '(savehist-file "~/.cache/emacs/history")
 '(scroll-bar-mode nil)
 '(scroll-margin 10)
 '(scroll-preserve-screen-position 1)
 '(scroll-step 1)
 '(sentence-end-double-space nil)
 '(show-paren-mode t)
 '(sort-fold-case t t)
 '(straight-recipes-emacsmirror-use-mirror t)
 '(straight-use-package-by-default t)
 '(term-buffer-maximum-size 4096)
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
 '(truncate-lines t)
 '(uniquify-strip-common-suffix nil)
 '(user-full-name "***REMOVED***")
 '(user-mail-address "***REMOVED***")
 '(vc-follow-symlinks nil)
 '(visible-bell t)
 '(whitespace-style
   '(trailing tabs lines newline empty indentation::tab indentation::space indentation big-indent space-after-tab space-before-tab space-mark tab-mark newline-mark))
 '(word-wrap t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "nil" :slant normal :weight normal :height 130 :width normal)))))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; load
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'packages)
(require 'functions)
(require 'keys)
(require 'hooks)
(when (string= system-type "darwin")
  (require 'macos)
  )
