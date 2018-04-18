(setq tab-width 4)

(global-font-lock-mode t)

(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)

(add-hook 'after-init-hook 'global-company-mode)

;; Projectile
(projectile-global-mode)

;; Company
(global-company-mode t)

;; Flycheck
(global-flycheck-mode)

;; Compilation
(setq compilation-read-command nil)

(provide 'general)
;;; general.el ends here
