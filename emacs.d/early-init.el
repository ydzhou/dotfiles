;; UI tweaks
(menu-bar-mode 1)
(tool-bar-mode 1)
(scroll-bar-mode -1)
;(set-window-scroll-bars (minibuffer-window) nil nil)

;; Initial frame size
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 180))

;; Initial page customization
(setq initial-scratch-message nil)
(setq initial-major-mode 'org-mode)
(setq inhibit-startup-screen t)

;; Transparent titlebar for mac osx
;(and (eq system-type 'darwin)
;  (add-to-list 'default-frame-alist '(ns-appearance . nil)) ; nil for dark text  
;  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t)))

;; Package config
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

  ;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
;(setq use-package-always-ensure t)
