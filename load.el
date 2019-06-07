(require 'tramp)
(require 'helm-config)
(require 'org-mu4e)
(require 'org-journal)

(require 'magit-gitflow)

(require 'todoist)
(setq todoist-token "4c4db3c91be52513339407fb80e5fdba689bb7df")

(require 'auth-source-pass)
;; (auth-source-pass-enable)

(mu4e-alert-enable-notifications)
(projectile-mode +1)

(which-key-mode)
(frames-only-mode)

(pdf-loader-install)

(editorconfig-mode 1)

(require 'terminal-here)
