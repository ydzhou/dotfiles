(require 'treesit)

(setq treesit-font-lock-level 4)
(setq treesit-language-source-alist '(
                                      (gomod "https://github.com/camdencheek/tree-sitter-go-mod")
                                      (go "https://github.com/tree-sitter/tree-sitter-go")
                                      (python "https://github.com/tree-sitter/tree-sitter-python")))

(define-derived-mode go-prog-mode prog-mode "TGo"
  (if (treesit-ready-p 'go)
      (progn
        (go-ts-mode)
        (setq go-ts-mode-hook go-mode-hook))
    (go-mode))
  )

(add-to-list 'major-mode-remap-alist
             '(go-mode . go-prog-mode))

(provide 'treesit-init)
