;; ruby mode
(add-to-list 'auto-mode-alist
             '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|rb.*\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js-mode))
(add-to-list 'auto-mode-alist '("\\rc\\'" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-to-list 'auto-mode-alist '(".*env.*'" . conf-mode))

(add-hook 'ruby-mode-hook 'robe-mode)

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

;; save every 5 minutes in case of crash
(run-at-time nil (* 5 60) 'recentf-save-list)

;; use bash for remote shells
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

(add-hook 'prog-mode-hook #'linum-mode)
;; (add-hook 'python-mode-hook 'blacken-mode)

;; Delete trailing spaces and add new line in the end of a file on save.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Revert (update) buffers automatically when underlying files are changed externally.
(global-auto-revert-mode t)

; Delete selected text when typing
(delete-selection-mode 1)

; y and n instead of yes and no everywhere else
(fset 'yes-or-no-p 'y-or-n-p)

;; CSI u mode
;; https://iterm2.com/documentation-csiu.html
;; https://gist.github.com/gnachman/b4fb1e643e7e82a546bc9f86f30360e4
(unless (display-graphic-p)
  (add-hook 'after-make-frame-functions
  '(lambda
     ;; Take advantage of iterm2's CSI u support (https://gitlab.com/gnachman/iterm2/-/issues/8382).
     (xterm--init-modify-other-keys)

     ;; Courtesy https://emacs.stackexchange.com/a/13957, modified per
     ;; https://gitlab.com/gnachman/iterm2/-/issues/8382#note_365264207
     (defun character-apply-modifiers (c &rest modifiers)
       "Apply modifiers to the character C.
MODIFIERS must be a list of symbols amongst (meta control shift).
Return an event vector."
       (if (memq 'control modifiers) (setq c (if (and (<= ?a c) (<= c ?z))
                                                 (logand c ?\x1f)
                                               (logior (lsh 1 26) c))))
       (if (memq 'meta modifiers) (setq c (logior (lsh 1 27) c)))
       (if (memq 'shift modifiers) (setq c (logior (lsh 1 25) c)))
       (vector c))
     (when (and (boundp 'xterm-extra-capabilities) (boundp 'xterm-function-map))
       (let ((c 32))
         (while (<= c 126)
           (mapc (lambda (x)
                   (define-key xterm-function-map (format (car x) c)
                     (apply 'character-apply-modifiers c (cdr x))))
                 '(;; with ?.VT100.formatOtherKeys: 0
                   ("\e\[27;3;%d~" meta)
                   ("\e\[27;5;%d~" control)
                   ("\e\[27;6;%d~" control shift)
                   ("\e\[27;7;%d~" control meta)
                   ("\e\[27;8;%d~" control meta shift)
                   ;; with ?.VT100.formatOtherKeys: 1
                   ("\e\[%d;3u" meta)
                   ("\e\[%d;5u" control)
                   ("\e\[%d;6u" control shift)
                   ("\e\[%d;7u" control meta)
                   ("\e\[%d;8u" control meta shift)))
           (setq c (1+ c)))))
     )))

(provide 'hooks)
