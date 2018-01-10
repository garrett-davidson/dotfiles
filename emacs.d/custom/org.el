(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done 'time)

(setq org-agenda-files (list "~/Dropbox/org/apps"
                            "~/Dropbox/org/school.org"
                            "~/Dropbox/org/home.org"))

(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(setq org-catch-invisible-edits 1)