; define keys
(global-set-key [f2] 'undo)
(global-set-key [f3] 'find-file)
(global-set-key [f4] 'ag)

(global-set-key [f7] 'save-buffer)
(global-set-key [f8] 'save-buffer)

(global-set-key [f9] 'comment-region)
(global-set-key [f10] 'uncomment-region)

(global-set-key [f12] 'kill-this-buffer)

(global-set-key [(meta &)] 'query-replace-regexp)
(global-set-key (kbd "C-x w") 'what-line)
(global-set-key [C-tab] 'other-window)
(global-set-key [C-return] 'company-complete)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x r") 'recentf-open-files)
(global-set-key (kbd "C-c a") 'org-agenda)
;;capture todo items using C-c c t
(define-key global-map (kbd "C-c c") 'org-capture)

(global-set-key (kbd "C-c t") 'toggle-transparency)

;; yafolding
(define-key yafolding-mode-map (kbd "<C-S-return>") nil)
(define-key yafolding-mode-map (kbd "<C-M-return>") nil)
(define-key yafolding-mode-map (kbd "<C-return>") nil)
;; (define-key yafolding-mode-map (kbd "C-c <C-M-return>") 'yafolding-toggle-all)
;; (define-key yafolding-mode-map (kbd "C-c <C-S-return>") 'yafolding-hide-parent-element)
(define-key yafolding-mode-map (kbd "<C-M-return>") 'yafolding-toggle-element)

(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; disable keys
(global-unset-key [kp-insert])
(global-unset-key [insert])
(global-unset-key (kbd "C-t"))
(global-unset-key (kbd "C-x c"))
(global-unset-key (kbd "C-z"))
;; damit jasch auch auf einer vernünftigen Tastatur einfügen kann:ein
(global-set-key (kbd "C-z") 'yank)
