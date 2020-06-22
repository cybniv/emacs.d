(global-unset-key (kbd "C-<delete>"))
(global-unset-key (kbd "C-t")) ; transpose
;(global-unset-key (kbd "C-w"))
(global-unset-key (kbd "C-x c")) ;; helms default "C-x c" is quite close to "C-x C-c", which quits Emacs.
(global-unset-key (kbd "C-x C-e")) ; eval-last-sexp
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "M-d"))
(global-unset-key (kbd "M-k"))
(global-unset-key (kbd "s-p"))     ; Don't print
(global-unset-key [insert])
(global-unset-key [kp-insert])

(global-set-key [f1] 'projectile-find-file)
(global-set-key [f2] 'undo-tree-undo)
(global-set-key [f3] 'helm-find-files)
(global-set-key [f4] 'deadgrep)
(global-set-key [f8] 'save-buffer)
(global-set-key [f9] 'comment-region)
(global-set-key [f10] 'uncomment-region)
(global-set-key [f12] 'kill-this-buffer)

;; Use ESC as u***REMOVED***ersal get me out of here command
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(global-set-key (kbd "C-x h") 'helm-command-prefix)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "M-r") 'helm-recentf)

(global-set-key (kbd "M-b") 'helm-mini)

(global-set-key (kbd "M-&") 'query-replace-regexp)
(global-set-key (kbd "C-<down>") 'move-line-down)
(global-set-key (kbd "C-<up>") 'move-line-up)
(global-set-key (kbd "M-<return>") 'open-terminal-in-workdir)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-o") 'other-window)

;; Things you'd expect from macOS app.
(global-set-key (kbd "M-s") 'save-buffer)             ;; save
(global-set-key (kbd "M-S") 'write-file)              ;; save as
(global-set-key (kbd "M-q") 'save-buffers-kill-emacs) ;; quit
(global-set-key (kbd "M-a") 'mark-whole-buffer)       ;; select all
(global-set-key (kbd "M-z") 'undo-tree-undo)
(global-set-key (kbd "M-Z") 'undo-tree-redo)

(global-set-key (kbd "M-c") 'kill-ring-save)
(global-set-key (kbd "M-v") 'yank)

;; use Cmd for movement and selection.
;; (global-set-key (kbd "M-<right>") (kbd "C-e"))        ;; End of line
;; (global-set-key (kbd "S-M-<right>") (kbd "C-S-e"))    ;; Select to end of line
;; (global-set-key (kbd "s-<left>") (kbd "M-m"))         ;; Beginning of line (first non-whitespace character)
;; (global-set-key (kbd "S-M-<left>") (kbd "M-S-m"))     ;; Select to beginning of line

;; Same keys with Shift will move you back and forward between open buffers.
(global-set-key (kbd "M-<") 'previous-buffer)
(global-set-key (kbd "M->") 'next-buffer)

;; Go to other windows easily with one keystroke Cmd-something.
(global-set-key (kbd "M-1") (kbd "C-x 1"))  ;; Cmd-1 kill other windows (keep 1)
(global-set-key (kbd "M-2") (kbd "C-x 2"))  ;; Cmd-2 split horizontally
(global-set-key (kbd "M-3") (kbd "C-x 3"))  ;; Cmd-3 split vertically
(global-set-key (kbd "M-0") (kbd "C-x 0"))  ;; Cmd-0...
(global-set-key (kbd "M-w") (kbd "C-x 0"))  ;; ...and Cmd-w to close current window

(provide 'keys)
