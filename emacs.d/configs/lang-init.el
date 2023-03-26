;; Programming Language Configs

(use-package go-mode
  :ensure t
  :config
  ;; Set up before-save hooks to format buffer and add/delete imports.
  ;; Make sure you don't have other gofmt/goimports hooks enabled.
  (defun lsp-go-install-save-hooks ()
    (add-hook 'before-save-hook #'lsp-format-buffer t t)
    (add-hook 'before-save-hook #'lsp-organize-imports t t))
  (add-hook 'go-mode-hook #'lsp-go-install-save-hooks))

(use-package terraform-mode
  :ensure t
  :custom (terraform-indent-level 2)
  )

(use-package yaml-mode
  :ensure t
  :custom (yaml-indent-offset 2))

(use-package protobuf-mode :ensure t)

(provide 'lang-init)
