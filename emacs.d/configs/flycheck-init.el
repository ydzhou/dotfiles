(use-package flycheck
  :ensure t
  :hook
  (go-mode . flycheck-mode)
  (python-mode . flycheck-mode)
  )

(provide 'flycheck-init)
