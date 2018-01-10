(package-initialize)

;; Set up MELPA
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(require 'better-defaults)

(add-hook 'before-save-hook 'whitespace-cleanup)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (enh-ruby-mode smartparens better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load "~/.emacs.d/custom/general.el")
(load "~/.emacs.d/custom/org.el")
(load "~/.emacs.d/custom/auto-complete.el")
(load "~/.emacs.d/custom/ruby.el")
