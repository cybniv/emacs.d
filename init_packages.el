(use-package org-journal
  :ensure t
  :after org
  :defer t
  :custom
  (org-journal-dir "~/Org/journal/")
  (org-journal-date-format "%A, %d %B %Y"))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

(use-package atomic-chrome 
  :ensure t
  :config
  (atomic-chrome-start-server)
  (setq atomic-chrome-buffer-open-style 'frame)
  )

(use-package lsp-mode
  :hook (python-mode . lsp)
  :hook (ruby-mode . lsp)
  :commands lsp)

;; optionally
;; (use-package lsp-ui :commands lsp-ui-mode)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
