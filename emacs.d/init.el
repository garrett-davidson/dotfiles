(package-initialize)

;; Set up MELPA
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Check for and (possibly) install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file "~/.emacs.d/configuration.org")

;(use-package better-defaults)

;(setq package-list '(better-defaults whitespace-cleanup smartparens))

;(add-hook 'before-save-hook 'whitespace-cleanup)

;(load "~/.emacs.d/custom/general.el")
;(load "~/.emacs.d/custom/org.el")
;(load "~/.emacs.d/custom/auto-complete.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ws-butler use-package srcery-theme magit git-gutter+ flycheck better-defaults auto-compile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
