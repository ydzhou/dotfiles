(defgroup acme9-theme nil
  "Options for acme theme."
  :group 'faces)

(deftheme acme9 "A color theme based on Acme & Sam")

;;; Color palette

(let (
      ;; Standardized palette
      (acme-cyan-dark       "#007777")
      (acme-cyan            "#90EBE9")
      (acme-cyan-light      "#E5FFFF")
      (acme-red             "#880000")
      (acme-red-light       "#F8E8E8")
      (acme-yellow-dark     "#86893b")
      (acme-yellow          "#EAEC8D")
      (acme-green           "#005500")
      (acme-green-light     "#E8FCE8")
      (acme-blue            "#000087")
      (acme-purple          "#555599")
      (acme-white           "#FEFEFE")
      (acme-yellow-gray     "#E5E5D0")
      (bg                   "#FFFFEC") ;; yellow-light
      (fg                   "#101010") ;; black
      )

;;; Theme Faces
  (custom-theme-set-faces
   'acme9

;;;;; basic coloring
   `(default                                      ((t (:foreground ,fg :background ,bg))))
   `(shadow                                       ((t (:foreground ,fg))))
   `(highlight                                    ((t (:inherit link :background ,acme-yellow-gray))))

;;;;; isearch   
   `(isearch                                      ((t (:foreground ,fg :weight normal :background ,acme-cyan))))
   `(isearch-fail                                 ((t (:foreground ,fg :weight normal :background ,acme-red))))
   `(query-replace                                ((t (:foreground ,fg :weight normal :background ,acme-cyan-light))))
   `(lazy-highlight                               ((t (:foreground ,fg :weight normal :background ,acme-cyan-light))))

   `(region                                       ((t (:foreground ,fg :background ,acme-yellow :extend nil))))
   `(secondary-selection                          ((t (:background ,acme-green-light))))
   `(trailing-whitespace                          ((t (:background ,acme-red))))

;;;;; text-mode   
   `(escape-glyph                                 ((t (:foreground ,fg :normal nil))))
   ;; `(homoglyph)

;;;;; mode-line
   `(mode-line                                    ((t (:foreground ,fg :background ,acme-cyan-light :box t))))
   `(mode-line-inactive                           ((t (:foreground ,fg :background ,acme-yellow-gray :box t))))
   `(mode-line-highlight                          ((t (:foreground ,fg :background ,acme-cyan))))
   `(mode-line-buffer-id                          ((t (:foreground ,fg :weight bold))))

;;;;; header-line
   `(header-line                                  ((t (:foreground ,fg :background ,acme-cyan-light :box t))))   
   ;; `(header-line-highlight)

;;;;; tab-line
   ;; `(tab-line)

   `(vertical-border                              ((t (:foreground ,fg))))   
   `(minibuffer-prompt                            ((t (:foreground ,fg :weight normal)))) 
   `(fringe                                       ((t (:foreground ,fg :background ,bg))))
   `(cursor                                       ((t (:foreground ,bg :background ,fg))))
   `(tooltip                                      ((t (:foreground ,fg :background ,acme-yellow))))
   ;; `(mouse)
   `(scroll-bar                                   ((t (:foreground ,acme-yellow-dark :background ,bg))))
   ;; `(tool-bar)
   ;; `(tab-bar)

;;;;; menu
   `(menu                                         ((t (:foreground ,bg :background ,fg))))   
   `(tty-menu-enabled-face                        ((t (:foreground ,fg :background ,acme-green-light))))
   `(tty-menu-disabled-face                       ((t (:foreground ,acme-yellow-gray :background ,acme-green-light))))
   `(tty-menu-selected-face                       ((t (:foreground ,acme-white :background ,acme-green))))
   
   ;; `(button                                       ((t (:underline t))))
   `(link                                         ((t (:foreground ,acme-blue :underline nil :weight normal))))
   ;; `(link-visited                                 ((t (:foreground ,acme-blue :underline t :weight normal))))
   ;; `(line-number                                  ((t (:foreground ,fg :background ,acme-yellow-gray))))
   ;; `(line-number-current-line                     ((t (:foreground ,acme-blue :background ,acme-yellow-gray))))

   ;; `(success                                      ((t (:foreground ,acme-green :weight normal))))
   ;; `(warning                                      ((t (:foreground ,acme-red :weight normal))))
   ;; `(error                                        ((t (:foreground ,acme-red :normal t))))

;;;;; grep
   ;; `(grep-context-face                            ((t (:foreground ,fg))))
   ;; `(grep-error-face                              ((t (:foreground ,acme-red :weight normal :underline t))))
   ;; `(grep-hit-face                                ((t (:foreground ,acme-purple :weight normal))))
   ;; `(grep-match-face                              ((t (:foreground ,acme-cyan :weight normal))))
   ;; `(match                                        ((t (:background ,acme-cyan :foreground ,acme-cyan-light))))

;;;;; ag
   ;; `(ag-hit-face                                  ((t (:foreground ,acme-green :weight normal))))
   ;; `(ag-match-face                                ((t (:foreground ,acme-cyan :background ,acme-cyan-light :weight normal))))

;;;;; font lock
   `(font-lock-builtin-face                       ((t (:foreground ,fg :weight normal))))
   `(font-lock-function-name-face                 ((t (:foreground ,fg :weight normal))))
   `(font-lock-string-face                        ((t (:foreground ,fg))))
   `(font-lock-keyword-face                       ((t (:foreground ,fg :weight normal)))) ; if, else, for, while, return...
   `(font-lock-type-face                          ((t (:foreground ,fg :weight normal)))) ; int, float, string, void...
   `(font-lock-constant-face                      ((t (:foreground ,fg :weight normal)))) ; NULL, nullptr, true, false...
   `(font-lock-variable-name-face                 ((t (:foreground ,fg :weight normal))))
   `(font-lock-comment-face                       ((t (:foreground ,acme-yellow-dark :italic nil))))
   `(font-lock-comment-delimiter-face             ((t (:foreground ,acme-yellow-dark :italic nil))))
   `(font-lock-doc-face                           ((t (:foreground ,fg :italic nil))))
   `(font-lock-negation-char-face                 ((t (:foreground ,fg :weight normal))))
   `(font-lock-preprocessor-face                  ((t (:foreground ,fg :weight normal))))
   `(font-lock-regexp-grouping-construct          ((t (:foreground ,acme-purple :weight normal))))
   `(font-lock-regexp-grouping-backslash          ((t (:foreground ,acme-purple :weight normal))))
   `(font-lock-warning-face                       ((t (:foreground ,acme-red :weight normal))))

;;;;; table
   `(table-cell                                   ((t (:background ,acme-yellow-gray))))

;;;;; dired/dired+/dired-subtree
   `(dired-directory                              ((t (:foreground ,acme-blue :weight bold))))

;;;;; show-paren
   `(show-paren-mismatch                          ((t (:foreground ,acme-yellow :background ,acme-red :weight normal))))
   `(show-paren-match                             ((t (:foreground ,fg :background ,acme-cyan :weight normal))))

   ))

   
;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'acme9)
(provide 'acme9-theme)
