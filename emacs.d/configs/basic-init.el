;; EDITOR CONFIGS

;; Display line number
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq-default display-line-numbers-width 4)

;; Display line and colume number in mode line
(line-number-mode 1)
(column-number-mode 1)

;; Highlight current line
(global-hl-line-mode -1)

;; Don't use tabs for indentation.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(blink-cursor-mode -1)
(setq visible-bell nil)
(setq ring-bell-function #'ignore)

;; No lockfiles
(setq create-lockfiles nil)

;; Use "y" and "n" in yes-or-no-p or read-answer
(setq use-short-answers t)

;; Auto pair
(electric-pair-mode 1)

;; Line wrap
(global-visual-line-mode 1)
(fringe-mode '(10 . 0))

;; Context menu
;;(context-menu-mode)

;; Auto revert/refresh file when change detected
(setq auto-revert-use-notify nil)
(global-auto-revert-mode)

;; Backup
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))

;; Performance tuning
(setq gc-cons-threshold 100000000) ;; 100MB
(setq read-process-output-max (* 1024 1024)) ;; 1MB

;; Smooth scrolling
(if (version<= emacs-version "29.0")
  (setq pixel-scroll-precision-use-momentum 't)
  (pixel-scroll-precision-mode 1))

;; Enable mouse support
;; Alternative: gpm-mouse-mode
(unless (display-graphic-p)
  (xterm-mouse-mode 1))

;; Select then pressing any key will remove selected text
(delete-selection-mode 1)

;; Keybinding
;; Map meta keys to command keys
(if (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  )
(if (eq system-type 'gnu/linux)
  (setq x-super-keysym 'meta)
  )

;; Custom keys for common operations
(define-key global-map (kbd "M-c") 'kill-ring-save)
(define-key global-map (kbd "M-v") 'yank)

(define-key global-map (kbd "M-w") 'quit-window)
(define-key global-map (kbd "M-s") 'save-buffer)

(provide 'basic-init)
