(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key "\M-\C-g" 'org-plot/gnuplot)

(setq org-log-done 'time)

(setq org-agenda-files (list "~/Dropbox/org/apps"
                            "~/Dropbox/org/school.org"
                            "~/Dropbox/org/home.org"))

(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(setq org-catch-invisible-edits 1)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((gnuplot . t)))

;; org-alert
;; Allows org to send alerts based on agenda items
(require 'org-alert)
(org-alert-enable)

;; org-random-todo
;; Allows org to notify of random todo items (from org-agenda-files)
(require 'org-random-todo)
(setq org-random-todo-how-often 1500)
(org-random-todo-mode 1)

(provide 'org)
;;; org.el ends here
