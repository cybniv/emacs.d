(global-unset-key [kp-insert])
(global-unset-key [insert])
(global-unset-key (kbd "C-t"))
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "M-d"))
(global-unset-key (kbd "C-<delete>"))
(global-unset-key (kbd "M-k"))
;(global-unset-key (kbd "C-w"))
(global-unset-key (kbd "C-x C-e")) ; eval-last-sexp

(global-set-key [f1] 'projectile-find-file)
(global-set-key [f2] 'undo)
(global-set-key [f3] 'helm-find-files)
(global-set-key [f4] 'projectile-ripgrep)
(global-set-key [f8] 'save-buffer)
(global-set-key [f9] 'comment-region)
(global-set-key [f10] 'uncomment-region)
(global-set-key [f12] 'kill-this-buffer)

(global-set-key (kbd "M-<return>") 'open-terminal-in-workdir)

(global-unset-key (kbd "C-x C-="))
(global-unset-key (kbd "C-x C--"))
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-unset-key (kbd "C-x c")) ;; helms default "C-x c" is quite close to "C-x C-c", which quits Emacs.
(global-set-key (kbd "C-c h") 'helm-command-prefix)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(global-set-key (kbd "<menu>") 'helm-M-x)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c g g") 'browse-at-remote)
(global-set-key (kbd "C-c h g") 'helm-google-suggest)
(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x r b") 'helm-bookmarks)
(global-set-key (kbd "M-&") 'query-replace-regexp)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'keys)
