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
