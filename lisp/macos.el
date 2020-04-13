;; mostly taken from:
;; https://github.com/freetonik/castlemacs

;; Pass system shell environment to Emacs. This is important primarily
;; for shell inside Emacs, but also things like Org mode export to Tex
;; PDF don't work, since it relies on running external command
;; pdflatex, which is loaded from PATH.
(use-package exec-path-from-shell
  :ensure t)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

; brew install coreutils
(setq insert-directory-program "gls")

;; =======
;; VISUALS

;; Enable transparent title bar on macOS
(add-to-list 'default-frame-alist '(ns-appearance . dark)) ;; {light, dark}
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))

;; Font
(set-face-attribute 'default nil :font "Fire Code Retina 15")
(setq-default line-spacing 2)

;; Show full path in the title bar.
(setq-default frame-title-format "%b (%f)")

(provide 'macos)
