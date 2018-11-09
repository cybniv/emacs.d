; define keys
(global-set-key [f2] 'undo)
(global-set-key [f3] 'find-file)
(global-set-key [f4] 'ag)

(global-set-key [f7] 'save-buffer)
(global-set-key [f8] 'save-buffer)

(global-set-key [f9] 'comment-region)
(global-set-key [f10] 'uncomment-region)

(global-set-key [f12] 'kill-this-buffer)

(global-set-key (kbd "M-&") 'query-replace-regexp)
(global-set-key (kbd "C-x w") 'what-line)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "C-Q") 'kill-emacs-server)

;; https://stackoverflow.com/questions/6464738/how-can-i-switch-focus-after-buffer-split-in-emacs
; (global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
; (global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

;;capture todo items using C-c c t
(define-key global-map (kbd "C-c c") 'org-capture)

;; (global-set-key (kbd "C-c t") 'toggle-transparency)

;; helm
;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(global-set-key (kbd "s-<left>") 'previous-buffer)
(global-set-key (kbd "s-<right>") 'next-buffer)
(global-set-key (kbd "s-x") 'helm-mini)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)

; (global-set-key (kbd "C-c h") 'helm-command-prefix)
; (global-set-key (kbd "C-c h o") 'helm-occur)
; (global-set-key (kbd "C-c h g") 'helm-google-suggest)

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


