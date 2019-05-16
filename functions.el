(defun occur-non-ascii ()
  "Find any non-ascii characters in the current buffer."
  (interactive)
  (occur "[^[:ascii:]]"))

(defun display-ansi-colors ()
  (interactive)
  (ansi-color-apply-on-region (point-min) (point-max)))

;; move DONE to archive
(defun org-archive-done-tasks ()
  (interactive)
  (org-map-entries
   (lambda ()
     (org-archive-subtree)
     (setq org-map-continue-from (outline-previous-heading)))
   "/DONE" 'agenda))

;; new way
;; (defun shr-html2text ()
;;   "Replacement for standard html2text using shr."
;;   (interactive)
;;   (let ((dom (libxml-parse-html-region (point-min) (point-max)))
;;         (shr-width fill-column)
;;   (shr-inhibit-images t)
;;     (shr-bullet " "))
;;      (erase-buffer)
;;      (shr-insert-document dom)
;;      (goto-char (point-min))))

;; (defun mu4e-shr2text () 
;;   "Html to text using the shr engine; this can be used in 
;; `mu4e-html2text-command' in a new enough emacs. Based on code by 
;; Titus von der Malsburg." 
;;   (interactive) 
;;   (let ((dom (libxml-parse-html-region (point-min) (point-max))) 
;;         (shr-inhibit-images t)) 
;;     (erase-buffer) 
;;     (shr-insert-document dom) 
;;     (goto-char (point-min)))) 

;; make the `gnus-dired-mail-buffers' function also work on
;; message-mode derived modes, such as mu4e-compose-mode
(defun gnus-dired-mail-buffers ()
  "Return a list of active message buffers."
  (let (buffers)
    (save-current-buffer
      (dolist (buffer (buffer-list t))
        (set-buffer buffer)
        (when (and (derived-mode-p 'message-mode)
                (null message-sent-message-via))
          (push (buffer-name buffer) buffers))))
    (nreverse buffers)))

;; override default tramp-auto-save function
(defun tramp-set-auto-save ()
  (auto-save-mode -1))

 ;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

(defun eshell-new()
  "Open a new instance of eshell."
  (interactive)
  (eshell 'N))

;; define function to shutdown emacs server instance
(defun kill-emacs-server ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
  )

(defun pcomplete/sudo ()
  (let ((prec (pcomplete-arg 'last -1)))
    (cond ((string= "sudo" prec)
           (while (pcomplete-here*
                   (funcall pcomplete-command-completion-function)
                   (pcomplete-arg 'last) t))))))
