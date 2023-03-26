;; Emacs Theme and Looks

;; Main editor theme

;;(use-package leuven-theme :ensure t :config (load-theme 'leuven t))
;;(use-package gruvbox-theme :ensure t :config (load-theme 'gruvbox t))
;;(use-package nord-theme :ensure t :config (load-theme 'nord t))
;;(use-package solarized-theme :ensure t :config (load-theme 'solarized-light t))
;;(use-package nimbus-theme :ensure t :config (load-theme 'nimbus t))
;;(use-package dracula-theme :ensure t :config (load-theme 'dracula t))
(use-package acme9-theme :config (load-theme 'acme9 t))
;;(load-theme 'deeper-blue t)

;; Set background color
;;(setq initial-frame-alist '((background-color . "#E3EDCD")))
;;(setq default-frame-alist initial-frame-alist)

;; Set font
(when (eq system-type 'darwin)
  (defconst fixed-pitch-font "M PLUS 1 Code")
  (defconst variable-pitch-font ".AppleSystemUIFont")
  (defconst cjk-font "LXGW WenKai Mono")
  (defconst font-height 180)
  (defconst font-minor-height 'unspecified))

(when (eq system-type 'gnu/linux)
  (defconst fixed-pitch-font "mplus Nerd Font" )
  (defconst variable-pitch-font "Noto Sans")
  (defconst cjk-font "LXGW WenKai Mono")
  (defconst font-height 140)
  (defconst font-minor-height '110))

(set-face-attribute 'default nil :family fixed-pitch-font :height font-height)
(set-face-attribute 'variable-pitch variable-pitch-font)
(copy-face 'default 'fixed-pitch)

(set-face-attribute 'mode-line nil :family variable-pitch-font :height font-minor-height)
(set-face-attribute 'mode-line-inactive nil :family variable-pitch-font :height font-minor-height)
(set-face-attribute 'tab-line nil :family variable-pitch-font :height font-minor-height)

(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'markdown-mode-hook 'variable-pitch-mode)

(set-fontset-font t 'han cjk-font)

;; Set cursor shape
(setq-default cursor-type '(bar . 4))

;; Customize tab line
(global-tab-line-mode 1)
(set-face-attribute 'tab-line nil :inherit 'mode-line-inactive :background 'unspecified :foreground 'unspecified :height 1.0 :box nil)
(set-face-attribute 'tab-line-tab nil :inherit 'tab-line :background 'unspecified :foreground "black" :box nil)
(set-face-attribute 'tab-line-tab-inactive nil :inherit 'mode-line-inactive :background 'unspecified :foreground 'unspecified)
(set-face-attribute 'tab-line-tab-current nil :inherit 'mode-line :background 'unspecified :foreground 'unspecified :weight 'semi-bold :box nil)
(set-face-attribute 'tab-line-highlight nil :inherit 'mode-line-highlight :background 'unspecified :foreground 'unspecified :box 'unspecified)


(provide 'theme-init)
