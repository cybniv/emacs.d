(require 'tramp)
(require 'eshell)
(require 'em-smart)
(require 'helm-config)
(require 'org-mu4e)
(require 'chruby)
(chruby "ruby-2.5")
;; fix bug
;; (require 'subr-x)

(require 'auth-source-pass)
;; (auth-source-pass-enable)

(mu4e-alert-enable-notifications)
(projectile-mode +1)

(which-key-mode)
(frames-only-mode)

(pdf-loader-install)

(setq eshell-prompt-regexp "^[^#$\n]*[#$] "
      eshell-prompt-function
      (lambda nil
        (concat
	 "[" (user-login-name) "@" (system-name) " "
	 (if (string= (eshell/pwd) (getenv "HOME"))
	     "~" (eshell/basename (eshell/pwd)))
	 "]"
	 (if (= (user-uid) 0) "# " "$ "))))
