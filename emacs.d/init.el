;; EDITOR CONFIGS
(add-to-list 'load-path "~/.emacs.d/configs/")

;; Disable native-comp warnings
(setq native-comp-async-report-warnings-errors 'silent)
(setq package-native-compile t)

;; UTF-8 Encoding
(set-language-environment "UTF-8")

(use-package all-the-icons :ensure t :if (display-graphic-p))

(require 'theme-init)

(require 'modeline-init)
(require 'menu-init)
(require 'toolbar-init)

;(require 'splash-init)
(require 'basic-init)

(require 'treemacs-init)
(require 'flycheck-init)
;(require 'treesit-init)
(require 'lsp-init)
(require 'lang-init)
(require 'company-init)
(require 'vertico-init)
(require 'consult-init)
(require 'orderless-init)

;; Aditional Packages
(use-package no-littering :ensure t)

(use-package exec-path-from-shell :ensure t)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(use-package recentf
  :init
  (setq
    recentf-save-file "~/.emacs.d/var/recentf"
    recentf-max-saved-items 100
    recentf-max-menu-items 50)
  (recentf-mode 1)
  (run-at-time nil (* 5 60) 'recentf-save-list))

(use-package projectile
  :ensure t
  :init (projectile-mode +1)
  :bind (:map projectile-mode-map
        ("M-p" . projectile-command-map)
        ("C-c p" . projectile-command-map))
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(connection-local-criteria-alist
   '(((:application eshell)
      eshell-connection-default-profile)))
 '(connection-local-profile-alist
   '((eshell-connection-default-profile
      (eshell-path-env-list))))
 '(custom-safe-themes
   '("59f7026ccc80fe6364ef049010c847a356896f688f242757f7ccd042a6d8f4fd" "2d0c343156093c69d9c4a5e2b59b0808dc6e7e4588a3750eca3d709eff180f87" default))
 '(package-selected-packages
   '(leuven-theme lsp-ui lsp-mode use-package go-mode exec-path-from-shell company all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
