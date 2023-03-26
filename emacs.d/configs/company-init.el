(use-package company
  :ensure t
  :hook (prog-mode . company-mode)
  ;:bind (:map company-active-map
  ;       ("<tab>" . company-complete-common-or-cycle))
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0.3))

(provide 'company-init)
