(require 'package) 
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine (quote xetex))
 '(TeX-view-program-list (quote (("mupdf" ("mupdf") "mupdf"))))
 '(beacon-mode t)
 '(browse-url-browser-function (quote browse-url-default-browser))
 '(compilation-message-face (quote default))
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (monokai doom-molokai)))
 '(custom-safe-themes
   (quote
    ("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "8891c81848a6cf203c7ac816436ea1a859c34038c39e3cf9f48292d8b1c86528" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "604648621aebec024d47c352b8e3411e63bdb384367c3dd2e8db39df81b475f5" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "9d9fda57c476672acd8c6efeb9dc801abea906634575ad2c7688d055878e69d6" "a566448baba25f48e1833d86807b77876a899fc0c3d33394094cf267c970749f" "291588d57d863d0394a0d207647d9f24d1a8083bb0c9e8808280b46996f3eb83" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "ed0b4fc082715fc1d6a547650752cd8ec76c400ef72eb159543db1770a27caa7" "42b9d85321f5a152a6aef0cc8173e701f572175d6711361955ecfb4943fe93af" "6ac7c0f959f0d7853915012e78ff70150bfbe2a69a1b703c3ac4184f9ae3ae02" "eecacf3fb8efc90e6f7478f6143fd168342bbfa261654a754c7d47761cec07c8" "ef04dd1e33f7cbd5aa3187981b18652b8d5ac9e680997b45dc5d00443e6a46e3" "0809485f08aa8c9b0100033eaa2d04f6a7410c2afcdbd76ce368a7a8e5744ffb" "7e7e200367d08279d1c99f0f2a20e7110cf81fc2a8fab6cfd69476aff42f9c7f" "0c4729a72e6928c5fc25b016d708dda37380f19cc8ddc78176c220361a665733" "4ee08785463947c516bfc3dab4a8dfed3cf4f4ddee9ef7ccc76e824ecd7fe322" "4e9b11ea4d85117c377141353feaa3948f2e40c1c10f29e66471adf6b9c2c4aa" "487ea855209efeb691b620af65a0eb6c577cacad43e3613a5e0ab4a7c461e811" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "4feee83c4fbbe8b827650d0f9af4ba7da903a5d117d849a3ccee88262805f40d" "722e1cd0dad601ec6567c32520126e42a8031cd72e05d2221ff511b58545b108" "840db7f67ce92c39deb38f38fbc5a990b8f89b0f47b77b96d98e4bf400ee590a" "986e7e8e428decd5df9e8548a3f3b42afc8176ce6171e69658ae083f3c06211c" "f5f3a6fb685fe5e1587bafd07db3bf25a0655f3ddc579ed9d331b6b19827ea46" "50ff65ab3c92ce4758cc6cd10ebb3d6150a0e2da15b751d7fbee3d68bba35a94" "ffe80c88e3129b2cddadaaf78263a7f896d833a77c96349052ad5b7753c0c5a5" "8543b328ed10bc7c16a8a35c523699befac0de00753824d7e90148bca583f986" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "85e6bb2425cbfeed2f2b367246ad11a62fb0f6d525c157038a0d0eaaabc1bfee" "c9f102cf31165896631747fd20a0ca0b9c64ecae019ce5c2786713a5b7d6315e" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "f6f5d5adce1f9a764855c9730e4c3ef3f90357313c1cae29e7c191ba1026bc15" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "eae831de756bb480240479794e85f1da0789c6f2f7746e5cc999370bbc8d9c8a" "9c4acf7b5801f25501f0db26ac3eee3dc263ed51afd01f9dcfda706a15234733" "5b8eccff13d79fc9b26c544ee20e1b0c499587d6c4bfc38cabe34beaf2c2fc77" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "389677f10ba34e91eb9d0dfa1a59918fe3e4a1a0fe346090d516ce4030cd59ed" "ed36f8e30f02520ec09be9d74fe2a49f99ce85a3dfdb3a182ccd5f182909f3ab" "1025e775a6d93981454680ddef169b6c51cc14cea8cb02d1872f9d3ce7a1da66" "50d07ab55e2b5322b2a8b13bc15ddf76d7f5985268833762c500a90e2a09e7aa" "4bf5c18667c48f2979ead0f0bdaaa12c2b52014a6abaa38558a207a65caeb8ad" "7527f3308a83721f9b6d50a36698baaedc79ded9f6d5bd4e9a28a22ab13b3cb1" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "7a1190ad27c73888f8d16142457f59026b01fa654f353c17f997d83565c0fc65" "d96587ec2c7bf278269b8ec2b800c7d9af9e22d816827639b332b0e613314dfd" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "ad16a1bf1fd86bfbedae4b32c269b19f8d20d416bd52a87cd50e355bf13c2f23" "c4bd8fa17f1f1fc088a1153ca676b1e6abc55005e72809ad3aeffb74bd121d23" "196df8815910c1a3422b5f7c1f45a72edfa851f6a1d672b7b727d9551bb7c7ba" "350dc341799fbbb81e59d1e6fff2b2c8772d7000e352a5c070aa4317127eee94" "80930c775cef2a97f2305bae6737a1c736079fdcc62a6fdf7b55de669fbbcd13" "250268d5c0b4877cc2b7c439687f8145a2c85a48981f7070a72c7f47a2d2dc13" "36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "3de3f36a398d2c8a4796360bfce1fa515292e9f76b655bb9a377289a6a80a132" "a85e40c7d2df4a5e993742929dfd903899b66a667547f740872797198778d7b5" "d2bd16a8bcf295dce0b70e1d2b5c17bb34cb28224a86ee770d56e6c22a565013" "446cc97923e30dec43f10573ac085e384975d8a0c55159464ea6ef001f4a16ba" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "5a7830712d709a4fc128a7998b7fa963f37e960fd2e8aa75c76f692b36e6cf3c" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "d9dab332207600e49400d798ed05f38372ec32132b3f7d2ba697e59088021555" "6271fc9740379f8e2722f1510d481c1df1fcc43e48fa6641a5c19e954c21cc8f" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "3e34e9bf818cf6301fcabae2005bba8e61b1caba97d95509c8da78cff5f2ec8e" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "527df6ab42b54d2e5f4eec8b091bd79b2fa9a1da38f5addd297d1c91aa19b616" "aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "1de06eb8a32632d627616cce8f4b8aa851ee3f707f10f661e4854cb2be407a26" default)))
 '(describe-char-unidata-list
   (quote
    (name old-name general-category decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment)))
 '(dired-listing-switches "-alhv --group-directories-first")
 '(doc-view-scale-internally nil)
 '(font-use-system-font t)
 '(global-company-mode t)
 '(global-undo-tree-mode t)
 '(gnus-dired-mail-mode (quote mu4e-user-agent))
 '(gnutls-algorithm-priority "PFS")
 '(gnutls-min-prime-bits 2048)
 '(gnutls-trustfiles
   (quote
    ("/etc/ssl/certs/ca-certificates.crt" "/etc/ssl/cert.pem")))
 '(helm-autoresize-max-height 0)
 '(helm-autoresize-min-height 20)
 '(helm-autoresize-mode t)
 '(helm-mode t)
 '(helm-projectile-fuzzy-match nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(ispell-dictionary "deutsch")
 '(magit-diff-use-overlays nil)
 '(message-citation-line-format "On %d %b %Y at %R %z, %f wrote:
")
 '(message-citation-line-function (quote message-insert-formatted-citation-line))
 '(message-send-mail-function (quote smtpmail-send-it))
 '(mml-secure-key-preferences
   (quote
    ((OpenPGP
      (sign)
      (encrypt
       ("***REMOVED***" "***REMOVED***")
       ("***REMOVED***" "***REMOVED***" "***REMOVED***")))
     (CMS
      (sign)
      (encrypt)))))
 '(mml-secure-openpgp-encrypt-to-self t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(mu4e-alert-style (quote libnotify))
 '(mu4e-attachment-dir "***REMOVED******REMOVED***/Downloads")
 '(mu4e-auto-retrieve-keys t)
 '(mu4e-bookmarks
   (quote
    (("flag:unread AND NOT flag:trashed" "Unread messages" 117)
     ("date:today..now" "Today's messages" 116)
     ("date:7d..now" "Last 7 days" 119)
     ("flag:unread AND NOT flag:trashed AND NOT flag:list" "not MailingLists unread" 110)
     ("list:fulldisclosure.seclists.org OR list:arch-security.archlinux.org OR list:dev.nmap.org OR list:bugtraq.list-id.securityfocus.com OR list:bugtraq@securityfocus.com" "SecLists" 115))))
 '(mu4e-change-filenames-when-moving t)
 '(mu4e-compose-signature "Cheers
***REMOVED***
")
 '(mu4e-context-policy (quote pick-first))
 '(mu4e-date-format-long "%a, %d.%b.%Y %H:%M:%S")
 '(mu4e-drafts-folder "/mborg/Drafts")
 '(mu4e-get-mail-command "mbsync -a")
 '(mu4e-headers-date-format "%a, %d.%b.%y")
 '(mu4e-headers-fields
   (quote
    ((:human-date . 15)
     (:flags . 6)
     (:size . 6)
     (:from . 23)
     (:subject))))
 '(mu4e-headers-long-date-format "%a, %d.%b.%Y %H:%M:%S")
 '(mu4e-headers-results-limit 500)
 '(mu4e-headers-visible-flags
   (quote
    (flagged new passed replied seen attach encrypted signed unread)))
 '(mu4e-headers-visible-lines 20)
 '(mu4e-html2text-command
   "html2text -b0 --ignore-images --protect-links --reference-links --no-wrap-links --links-after-para --unicode-snob --mark-code --ignore-tables")
 '(mu4e-maildir "***REMOVED******REMOVED***/.mail/")
 '(mu4e-maildirs-extension-use-bookmarks t)
 '(mu4e-sent-folder "/mborg/Sent")
 '(mu4e-trash-folder "/mborg/Trash")
 '(mu4e-update-interval 60)
 '(mu4e-user-mail-address-list
   (quote
    ("***REMOVED***" "***REMOVED***" "***REMOVED***")))
 '(mu4e-view-date-format "%a, %d.%b.%Y %H:%M:%S")
 '(mu4e-view-html-plaintext-ratio-heuristic 2305843009213693951)
 '(mu4e-view-show-addresses t)
 '(mu4e-view-show-images t)
 '(mu4e-view-use-gnus t)
 '(org-agenda-files
   (quote
    ("***REMOVED******REMOVED***/.org/mukke.org" "***REMOVED******REMOVED***/.org/tech.org" "***REMOVED******REMOVED***/.org/todo.org" "***REMOVED******REMOVED***/.org/uni.org")))
 '(org-agenda-skip-deadline-prewarning-if-scheduled t)
 '(org-agenda-skip-scheduled-if-deadline-is-shown t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-sorting-strategy
   (quote
    ((agenda deadline-up priority-down)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep))))
 '(org-agenda-span 27)
 '(org-agenda-time-leading-zero t)
 '(org-agenda-todo-ignore-deadlines (quote all))
 '(org-agenda-todo-ignore-scheduled (quote all))
 '(org-agenda-window-setup (quote current-window))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (ruby . t))))
 '(org-capture-templates
   (quote
    (("t" "todo" entry
      (file+headline "~/.org/todo.org" "Tasks")
      "* TODO [#A] %?
SCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))
%a
     ")
     ("x" "tech" entry
      (file+headline "~/.org/tech.org" "Tasks")
      "* TODO [#A] %?
SCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))
%a
     ")
     ("u" "uni" entry
      (file+headline "~/.org/uni.org" "Tasks")
      "* TODO [#A] %?
SCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))
%a
"))))
 '(org-clock-sound t)
 '(org-deadline-warning-days 7)
 '(org-hide-emphasis-markers t)
 '(org-html-checkbox-type (quote unicode))
 '(org-log-done nil)
 '(org-log-repeat (quote time))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-drill)))
 '(org-startup-indented t)
 '(org-tree-slide-fold-subtrees-skipped nil)
 '(package-selected-packages
   (quote
    (mu4e-alert undo-tree mu4e-query-fragments markdown-mode chruby inf-ruby auctex company-auctex haml-mode zenburn-theme yard-mode yaml-mode yafolding web-mode solarized-theme ruby-tools ruby-hash-syntax rspec-mode rainbow-delimiters psession powerline paradox org-tree-slide org-plus-contrib org-bullets nord-theme mu4e-maildirs-extension mu4e-jump-to-list monokai-theme moe-theme magit lua-mode js2-mode helm-projectile helm-pass helm-ag gruvbox-theme dumb-jump dracula-theme doom-themes coffee-mode base16-theme ag)))
 '(paradox-column-width-package 27)
 '(paradox-execute-asynchronously nil)
 '(paradox-github-token t)
 '(projectile-completion-system (quote helm))
 '(projectile-enable-caching t)
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "fixtures")))
 '(psession-autosave-mode t)
 '(psession-mode t)
 '(psession-savehist-mode t)
 '(recentf-max-menu-items 27)
 '(recentf-max-saved-items 100)
 '(recentf-mode t)
 '(ruby-insert-encoding-magic-comment nil)
 '(safe-local-variable-values (quote ((TeX-command-extra-options . -shell-escape))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(smtpmail-debug-info t)
 '(smtpmail-default-smtp-server "smtp.mailbox.org")
 '(smtpmail-smtp-server "smtp.mailbox.org")
 '(smtpmail-smtp-service 465)
 '(smtpmail-stream-type (quote ssl))
 '(solarized-distinct-doc-face t)
 '(solarized-distinct-fringe-background t)
 '(solarized-use-less-bold t)
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh" nil (tramp))
 '(truncate-lines t)
 '(undo-tree-auto-save-history t)
 '(undo-tree-enable-undo-in-region nil)
 '(undo-tree-history-directory-alist (quote (("." . "/tmp/undo-tree-history"))))
 '(uniquify-strip-common-suffix nil)
 '(user-full-name "***REMOVED***")
 '(user-mail-address "***REMOVED***")
 '(visible-bell t)
 '(word-wrap t))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; start transparent
; (add-to-list 'default-frame-alist '(alpha . (97 . 50)))
; (set-frame-parameter (selected-frame) 'alpha '(97 . 50))

;; load external configs
(load "~/.emacs.d/load.el")
(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/hooks.el")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 98 :width normal)))))

;; use mupdf as default PDF viewer
(with-eval-after-load "tex"
  (add-to-list 'TeX-view-program-list '("mupdf" "/usr/bin/mupdf %o"))
  (setcdr (assq 'output-pdf TeX-view-program-selection) '("mupdf")))


(setq mu4e-contexts
      `( ,(make-mu4e-context
           :name "mborg"
           :enter-func (lambda () (mu4e-message "switching to private context"))
           ;; :leave-func (lambda () (mu4e-message "Leaving Private context"))
           ;; we match based on the contact-fields of the message
           :match-func (lambda (msg)
                         (when msg
                           (string-match-p "^/mborg" (mu4e-message-field msg :maildir))))
           ;; :match-func (lambda (msg)
           ;;               (when msg 
           ;;                 (mu4e-message-contact-field-matches msg 
           ;;                                                     :to "***REMOVED***")))
           :vars '( ( user-mail-address      . "***REMOVED***"  )
                    ( user-full-name         . "***REMOVED***" )
                    ( mu4e-compose-signature .
                                             (concat
                                              "Sincerely\n"
                                              "***REMOVED***\n"))))
         ,(make-mu4e-context
           :name "***REMOVED***"
           :enter-func (lambda () (mu4e-message "switching to ***REMOVED*** context"))
           ;; no leave-func
           ;; we match based on the maildir of the message
           ;; this matches maildir /Arkham and its sub-directories
           :match-func (lambda (msg)
                         (when msg
                           (string-match-p "^/***REMOVED***" (mu4e-message-field msg :maildir))))
           :vars '( ( user-mail-address       . "***REMOVED***" )
                    ( user-full-name          . "***REMOVED***" )
                    ( mu4e-compose-signature  .
                                              (concat
                                               "\n"
                                               "***REMOVED***\n"
                                               "Entwicklung / Development\n"
                                               "***REMOVED*** publishing services GmbH\n"
                                               "***REMOVED***, ***REMOVED*** ***REMOVED***, Germany\n"
***REMOVED***
                                               "***REMOVED***, https://www.***REMOVED***.de\n"
                                               "\n"
***REMOVED***
                                               "Registernummer / Registration Number: HRB 24930\n"
                                               "\n"
                                               "Geschäftsführer: ***REMOVED***, ***REMOVED***, ***REMOVED***"
                                               ))))
         ))

(add-to-list 'mu4e-view-actions
  '("ViewInBrowser" . mu4e-action-view-in-browser) t)
(put 'dired-find-alternate-file 'disabled nil)
