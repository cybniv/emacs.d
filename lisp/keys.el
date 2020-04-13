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
(global-set-key (kbd "C-x r") 'helm-recentf)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-x b") 'helm-mini)

(global-set-key (kbd "M-&") 'query-replace-regexp)
(global-set-key (kbd "C-<down>") 'move-line-down)
(global-set-key (kbd "C-<up>") 'move-line-up)
(global-set-key (kbd "M-<return>") 'open-terminal-in-workdir)

(global-set-key (kbd "s-x") 'helm-M-x)
(global-set-key (kbd "s-y") 'helm-show-kill-ring)
(global-set-key (kbd "s-g") 'goto-line)
(global-set-key (kbd "s-o") 'other-window)

;; Things you'd expect from macOS app.
(global-set-key (kbd "s-s") 'save-buffer)             ;; save
(global-set-key (kbd "s-S") 'write-file)              ;; save as
(global-set-key (kbd "s-q") 'save-buffers-kill-emacs) ;; quit
(global-set-key (kbd "s-a") 'mark-whole-buffer)       ;; select all
(global-set-key (kbd "s-z") 'undo-tree-undo)
(global-set-key (kbd "s-Z") 'undo-tree-redo)

;; Use Cmd for movement and selection.
(global-set-key (kbd "s-<right>") (kbd "C-e"))        ;; End of line
(global-set-key (kbd "S-s-<right>") (kbd "C-S-e"))    ;; Select to end of line
(global-set-key (kbd "s-<left>") (kbd "M-m"))         ;; Beginning of line (first non-whitespace character)
(global-set-key (kbd "S-s-<left>") (kbd "M-S-m"))     ;; Select to beginning of line

(global-set-key (kbd "s-<up>") 'beginning-of-buffer)  ;; First line
(global-set-key (kbd "s-<down>") 'end-of-buffer)      ;; Last line

(global-set-key (kbd "C-a") 'smarter-move-beginning-of-line)
(global-set-key (kbd "s-<left>") 'smarter-move-beginning-of-line)

(global-set-key (kbd "s-,") 'my-pop-local-mark-ring)
(global-set-key (kbd "s-.") 'unpop-to-mark-command)

;; Same keys with Shift will move you back and forward between open buffers.
(global-set-key (kbd "s-<") 'previous-buffer)
(global-set-key (kbd "s->") 'next-buffer)

;; Go to other windows easily with one keystroke Cmd-something.
(global-set-key (kbd "s-1") (kbd "C-x 1"))  ;; Cmd-1 kill other windows (keep 1)
(global-set-key (kbd "s-2") (kbd "C-x 2"))  ;; Cmd-2 split horizontally
(global-set-key (kbd "s-3") (kbd "C-x 3"))  ;; Cmd-3 split vertically
(global-set-key (kbd "s-0") (kbd "C-x 0"))  ;; Cmd-0...
(global-set-key (kbd "s-w") (kbd "C-x 0"))  ;; ...and Cmd-w to close current window

(provide 'keys)
