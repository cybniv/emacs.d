; define keys
(global-set-key [f2] 'undo)

(global-set-key [f4] 'ag)
;; (global-set-key [f5] 'find-grep)
;; (global-set-key [f6] 'find-grep)
(global-set-key [f7] 'save-buffer)
(global-set-key [f8] 'save-buffer)

(global-set-key [f9] 'comment-region)
(global-set-key [f10] 'uncomment-region)
(global-set-key [(shift f7)] "\C-u\C-xs")
(global-set-key [f12] 'kill-this-buffer)
(global-set-key [kp-insert] 'nil)
(global-set-key [insert] 'nil)
(global-set-key "\C-a" 'beginning-of-line-text)
(global-set-key "\M-g" 'goto-line)
(global-set-key [(meta &)] 'query-replace-regexp)
(global-set-key "\C-xw" 'what-line)
(global-set-key [C-tab] 'other-window)
(global-set-key [C-return] 'company-complete)
(global-set-key (kbd "C-x g") 'magit-status)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; helm
(global-set-key [f3] 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-c h g") 'helm-google-suggest)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)

;; recentf
;; save every 5 minutes in case of crash
(run-at-time nil (* 5 60) 'recentf-save-list)

(global-set-key (kbd "C-c a") 'org-agenda)
;;capture todo items using C-c c t
(define-key global-map (kbd "C-c c") 'org-capture)

;; disable ctrl + z for minimize
;; (global-unset-key (kbd "C-z"))
;; damit jasch auch auf einer vernünftigen Tastatur einfügen kann:ein
(global-set-key (kbd "C-z") 'yank)
;; disable ctrl + t for transpose-chars
(global-unset-key (kbd "C-t"))
(global-unset-key (kbd "C-x c"))

(global-set-key (kbd "C-c t") 'toggle-transparency)

;; yafolding
(define-key yafolding-mode-map (kbd "<C-S-return>") nil)
(define-key yafolding-mode-map (kbd "<C-M-return>") nil)
(define-key yafolding-mode-map (kbd "<C-return>") nil)
;; (define-key yafolding-mode-map (kbd "C-c <C-M-return>") 'yafolding-toggle-all)
;; (define-key yafolding-mode-map (kbd "C-c <C-S-return>") 'yafolding-hide-parent-element)
(define-key yafolding-mode-map (kbd "<C-M-return>") 'yafolding-toggle-element)
