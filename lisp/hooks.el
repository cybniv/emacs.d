;; ruby mode
(add-to-list 'auto-mode-alist
             '("\\.\\(?:cap\\|gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|rb.*\\|ru\\|thor\\)\\'" . ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(?:Brewfile\\|Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
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

(provide 'hooks)
