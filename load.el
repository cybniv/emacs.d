(require 'powerline)
(require 'tramp)
(require 'eshell)
(require 'em-smart)
(require 'helm-config)
(require 'mu4e-jump-to-list)
(require 'chruby)
(chruby "ruby-2.5")
(add-hook 'ruby-mode-hook 'robe-mode)

(mu4e-alert-enable-notifications)
(projectile-mode +1)
(powerline-reset)
(dumb-jump-mode)
(require 'emms-setup)
(emms-all)
(emms-default-players)

(setq eshell-prompt-regexp "^[^#$\n]*[#$] "
      eshell-prompt-function
      (lambda nil
        (concat
	 "[" (user-login-name) "@" (system-name) " "
	 (if (string= (eshell/pwd) (getenv "HOME"))
	     "~" (eshell/basename (eshell/pwd)))
	 "]"
	 (if (= (user-uid) 0) "# " "$ "))))

(pdf-tools-install)
