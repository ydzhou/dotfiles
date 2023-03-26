(use-package lsp-ui :ensure t :commands lsp-ui-mode)

(use-package lsp-pyright :ensure t)

(use-package lsp-mode
  :ensure t
  :custom
  (lsp-enable-snippet nil)
  (lsp-keep-workspace-alive t)
  (lsp-enable-xref t)
  (lsp-enable-imenu t)
  (lsp-enable-completion-at-point t)
  (lsp-completion-show-detail t)
  (lsp-ui-doc-delay 1.5)
  (lsp-ui-doc-show-with-mouse t)
  (lsp-ui-doc-show-with-cursor nil)
  (lsp-ui-doc-position 'at-point)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-use-webkit nil)
  (lsp-ui-sideline-show-diagnostics t)
  (lsp-ui-sideline-show-code-actions t)
  (lsp-file-watch-threshold 5000)
  ;; Display all of the info returned by document/onHover under the mode line
  (lsp-eldoc-render-all nil)
  :hook (
  (go-mode . lsp-deferred)
  (python-mode . lsp-deferred)
  (terraform-mode . lsp-deferred)
  ;(c++-mode . 'lsp-deferred)
  ;(c-mode . lsp-deferred)
  )
  :config
  (setq lsp-idle-delay 0.500)
  (setq company-minimum-prefix-length 1)
  :commands (lsp lsp-deferred))

(provide 'lsp-init)
