(use-package org-journal
  :ensure t
  :after org
  :defer t
  :custom
  (org-journal-dir "~/Org/journal/")
  (org-journal-date-format "%A, %d %B %Y"))

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

(use-package elfeed-org
  :ensure t
  :config
  (elfeed-org)
  (setq rmh-elfeed-org-files (list "~/Org/elfeed.org")))

(use-package which-key
  :config
  (which-key-mode +1))

(use-package editorconfig
  :config
  (editorconfig-mode 1))
