;; Disable menu-bar, tool-bar and scroll-bar to increase the usable space.
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Also shrink fringes to 1 pixel.
(fringe-mode 1)

;; Load EXWM.
(require 'exwm)
(require 'exwm-config)
;; (exwm-config-ido)
;; (exwm-enable-ido-workaround)
(require 'exwm-systemtray)
(require 'exwm-randr)


;; Set the initial number of workspaces (they can also be created later).
(setq exwm-workspace-number 10)

;; All buffers created in EXWM mode are named "*EXWM*". You may want to
;; change it in `exwm-update-class-hook' and `exwm-update-title-hook', which
;; are run when a new X window class name or title is available.  Here's
;; some advice on this topic:
;; + Always use `exwm-workspace-rename-buffer` to avoid naming conflict.
;; + For applications with multiple windows (e.g. GIMP), the class names of
;    all windows are probably the same.  Using window titles for them makes
;;   more sense.
;; In the following example, we use class names for all windows expect for
;; Java applications and GIMP.
(add-hook 'exwm-update-class-hook
          (lambda ()
            (unless (or (string-prefix-p "sun-awt-X11-" exwm-instance-name)
                        (string= "gimp" exwm-instance-name))
              (exwm-workspace-rename-buffer exwm-class-name))))
(add-hook 'exwm-update-title-hook
          (lambda ()
            (when (or (not exwm-instance-name)
                      (string-prefix-p "sun-awt-X11-" exwm-instance-name)
                      (string= "gimp" exwm-instance-name))
              (exwm-workspace-rename-buffer exwm-title))))

;; Enable two xrandr outputs one named 'default' and another named 'other'.
(defun my-exwm-xrandr-two-outputs (default other)
  (shell-command
   (concat "xrandr --output " other " --right-of " default " --auto")))

;; Enable only one xrandr output named 'default'.
(defun my-exwm-xrandr-one-output (default)
  (shell-command (concat "xrandr --output " default " --auto")))

;; Disable xrandr output named 'output'.
(defun my-exwm-xrandr-off (output)
  (if output (shell-command (concat "xrandr --output " output " --off"))))

;; Update exwm-randr-workspace-output-plist with two outputs named
;; 'default' and 'other'.  If the 'other' output is same as 'default'
;; then all workspaces will be redirected to the 'default' output.
(defun my-exwm-xrandr-config (default other)
  (setq exwm-randr-workspace-output-plist
	(progn
	  (setq result (list 0 default))
	  (setq index 1)
	  (while (< index exwm-workspace-number)
	    (setq result (append result (list index other)))
	    (setq index (1+ index)))
	  result)))

;; Dynamically find the active xrandr outputs and update exwm
;; workspace configuration and enable xrandr outputs appropriately.
(defun my-exwm-xrandr-hook (default)
  (let* ((connected-cmd "xrandr -q|awk '/ connected/ {print $1}'")
	 (connected (process-lines "bash" "-lc" connected-cmd))
	 (previous (delete-dups (seq-remove
				 'integerp
				 exwm-randr-workspace-output-plist))))
    (cond ((member "DP1-1" connected)
	   (progn (my-exwm-xrandr-config default "DP1-1")
		  (my-exwm-xrandr-two-outputs default "DP1-1")))
	  ((member "DP1-2" connected)
	   (progn (my-exwm-xrandr-config default "DP1-2")
		  (my-exwm-xrandr-two-outputs default "DP1-2")))
	  ((member "HDMI-1" connected)
	   (progn (my-exwm-xrandr-config default "HDMI-1")
		  (my-exwm-xrandr-two-outputs default "HDMI-1")))
	  ((member "HDMI-2" connected)
	   (progn (my-exwm-xrandr-config default "HDMI-2")
		  (my-exwm-xrandr-two-outputs default "HDMI-2")))
	  (t (progn (my-exwm-xrandr-config default default)
		    (mapcar 'my-exwm-xrandr-off
			    (delete default previous)))))))

(setq exwm-randr-screen-change-hook
      (lambda () (my-exwm-xrandr-hook "eDP1")))

;; Global keybindings can be defined with `exwm-input-global-keys'.
;; Here are a few examples:
(setq exwm-input-global-keys
      `(
        ;; Bind "s-r" to exit char-mode and fullscreen mode.
        ([?\s-r] . exwm-reset)
        ;; Bind "s-w" to switch workspace interactively.
        ([?\s-w] . exwm-workspace-switch)
        ;; Bind "s-0" to "s-9" to switch to a workspace by its index.
        ,@(mapcar (lambda (i)
                    `(,(kbd (format "s-%d" i)) .
                      (lambda ()
                        (interactive)
                        (exwm-workspace-switch-create ,i))))
                  (number-sequence 0 9))

        ;; Bind "s-&" to launch applications ('M-&' also works if the output
        ;; buffer does not bother you).
        ([?\s-d] . (lambda (command)
		     (interactive (list (read-shell-command "$ ")))
		     (start-process-shell-command command nil command)))

        ([?\s-l] . helm-exwm)
                     
        ([s-f2] . (lambda ()
		    (interactive)
		    (start-process "" nil "/usr/bin/slock")))

        ([s-return] . eshell-new)

        ([S-s-return] . shell)
        ))

;; To add a key binding only available in line-mode, simply define it in
;; `exwm-mode-map'.  The following example shortens 'C-c q' to 'C-q'.
(define-key exwm-mode-map [?\C-q] #'exwm-input-send-next-key)

;; The following example demonstrates how to use simulation keys to mimic
;; the behavior of Emacs.  The value of `exwm-input-simulation-keys` is a
;; list of cons cells (SRC . DEST), where SRC is the key sequence you press
;; and DEST is what EXWM actually sends to application.  Note that both SRC
;; and DEST should be key sequences (vector or string).
(setq exwm-input-simulation-keys
      '(
        ;; movement
        ([?\C-b] . [left])
        ([?\M-b] . [C-left])
        ([?\C-f] . [right])
        ([?\M-f] . [C-right])
        ([?\C-p] . [up])
        ([?\C-n] . [down])
        ([?\C-a] . [home])
        ([?\C-e] . [end])
        ([?\M-v] . [prior])
        ([?\C-v] . [next])
        ([?\C-d] . [delete])
        ([?\C-k] . [S-end delete])
        ;; cut/paste.
        ;; ([?\C-w] . [?\C-x])
        ([?\M-w] . [?\C-c])
        ([?\C-y] . [?\C-v])
        ;; search
        ([?\C-s] . [?\C-f])))

;; You can hide the minibuffer and echo area when they're not used, by
;; uncommenting the following line.
;(setq exwm-workspace-minibuffer-position 'bottom)

;; Do not forget to enable EXWM. It will start by itself when things are
;; ready.  You can put it _anywhere_ in your configuration.
(exwm-enable)
;; Pick some height for the system tray. Some applet icons don't appear
;; otherwise.
(setq exwm-systemtray-height 16)
(exwm-systemtray-enable)
(exwm-randr-enable)

;; "C-c r" is for xrandr setup.
(exwm-input-set-key
 (kbd "C-c r")
 (lambda () (interactive)
   (start-process "xrandr" "*Messages*" "xrandr" "-q")))
