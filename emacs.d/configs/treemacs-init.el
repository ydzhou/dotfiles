(use-package treemacs
  :ensure t
  :after treemacs-all-the-icons
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "C-x C-n") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-display-in-side-window t
          treemacs-follow-after-init t
          treemacs-expand-after-init t
          treemacs-indentation 2
          treemacs-indentation-string " "
          treemacs-position 'left
          treemacs-show-hidden-files nil
          treemacs-silent-refresh t
          treemacs-sorting 'alphabetic-asc
          treemacs-wide-toggle-width 70
          treemacs-width 35)
    ; (treemacs-resize-icons 44)
    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (when (display-graphic-p)
      (setq treemacs-text-scale -1)
      (treemacs-load-theme "all-the-icons"))
    )
  :bind
  (:map global-map
        ("C-x C-n" . treemacs))
  (:map treemacs-mode-map
        ("<mouse-1>" . treemacs-single-click-expand-action))
  :hook
  (when (display-graphic-p) (treemacs-mode . variable-pitch-mode))
  )

(use-package treemacs-projectile
  :ensure t
  :after (treemacs projectile)
  )

(use-package treemacs-all-the-icons :ensure t)

(provide 'treemacs-init)
