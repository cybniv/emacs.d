(add-to-list 'auto-mode-alist
             '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|rb.*\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-hook 'ruby-mode-hook 'robe-mode)

;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

(add-hook 'dired-load-hook '(lambda () (require 'dired-x))) ; Load Dired X when Dired is loaded.
(setq dired-omit-mode t) ; Turn on Omit mode.

(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)

(mu4e-maildirs-extension)

;; (add-hook 'org-mode-hook 'org-bullets-mode)
;; (setq org-bullets-bullet-list
;;       '("◉" "◎" "⚫" "○" "►" "◇"))

;; Group buffers in ibuffer list by projectile project
(add-hook 'ibuffer-hook
    (lambda ()
      (ibuffer-projectile-set-filter-groups)
      (unless (eq ibuffer-sorting-mode 'alphabetic)
        (ibuffer-do-sort-by-alphabetic))))

;; save every 5 minutes in case of crash
(run-at-time nil (* 5 60) 'recentf-save-list)

; use bash for remote shells
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
; (add-hook 'term-mode-hook #'eterm-256color-mode)

;; --group-directories-first breaks dired over tramp
;; https://www.reddit.com/r/emacs/comments/8dj1bt/groupdirectoriesfirst_breaks_dired_over_tramp/
;; (add-hook 'dired-mode-hook 
;; (lambda ()
;; (when (file-remote-p dired-directory)                          
;; (setq-local dired-actual-switches "-alhF"))))
