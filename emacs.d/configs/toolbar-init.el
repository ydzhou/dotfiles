(setq tool-bar-style 'both)

(add-to-list
 'image-load-path
 (expand-file-name "icons/material" user-emacs-directory))

(setq tool-bar-map (make-sparse-keymap))

(defun custom-tool-bar--image-expression (icon)
  (let* (
	 ;(xpm-spec (list :type 'xpm :file (concat icon ".xpm")))
     (svg-spec (list :type 'svg :file (concat icon ".svg") :foreground "#303030"))
	 (png-spec (list :type 'png :file (concat icon ".png"))))
    `(find-image ',(list svg-spec png-spec))))

(define-key tool-bar-map [toggle-tree]
            `(menu-item "Toggle Treemacs" treemacs
              :label "Toggle Treemacs"
              :help "Toggle Treemacs"
              :image ,(custom-tool-bar--image-expression "sidebar")))

(define-key tool-bar-map [find]
            `(menu-item "Find All" consult-ripgrep
              :enable (menu-bar-non-minibuffer-window-p)
              :label "Find All"
              :help "Consult Ripgrep"
              :image ,(custom-tool-bar--image-expression "search")))

(define-key tool-bar-map [about-emacs]
  `(menu-item "About Emacs" about-emacs
              :help "About Emacs"
              :image ,(custom-tool-bar--image-expression "help")))

;(define-key tool-bar-map [paste]
;  `(menu-item "Paste" yank
;              :enable t
;              :help "Paste (yank) text most recently cut/copied"
;              :image ,(find-image '((:type svg :file "paste.svg")))))

;(define-key tool-bar-map [copy]
;  `(menu-item "Copy" ns-copy-including-secondary
;              :enable mark-active
;              :help "Copy text in region between mark and current position"
;              :image ,(find-image '((:type svg :file "copy.svg")))))

;(define-key tool-bar-map [cut]
;  `(menu-item "Cut" kill-region
;              :enable (and mark-active (not buffer-read-only))
;              :help "Cut (kill) text in region between mark and current position"
;              :image ,(find-image '((:type svg :file "cut.svg")))))

(define-key tool-bar-map [undo-redo]
  `(menu-item "Redo" undo-redo
              :enable (and (not buffer-read-only)
                           (undo--last-change-was-undo-p buffer-undo-list))
              :help "Redo last undone edits"
              :image ,(custom-tool-bar--image-expression "redo")))

(define-key tool-bar-map [undo]
  `(menu-item "Undo" undo
              :enable (and (not buffer-read-only)
                           (not (eq t buffer-undo-list))
                           (if (eq last-command 'undo)
                               (listp pending-undo-list)
                             (consp buffer-undo-list)))
              :help "Undo last edits"
              :image ,(custom-tool-bar--image-expression "undo")))


(define-key tool-bar-map [separator-edit] menu-bar-separator)

(define-key tool-bar-map [save-buffer]
  `(menu-item "Save" save-buffer
              :enable (and (buffer-modified-p)
                           (buffer-file-name)
                           (menu-bar-non-minibuffer-window-p))
              :help "Save current buffer to its file"
              :image ,(custom-tool-bar--image-expression "save")))

(define-key tool-bar-map [kill-buffer]
  `(menu-item "Close" kill-this-buffer
              :enable (kill-this-buffer-enabled-p)
              :help "Discard (kill) current buffer"
              :image ,(custom-tool-bar--image-expression "close")))

(define-key tool-bar-map [dired]
  `(menu-item "Open Directory..." dired
              :enable (menu-bar-non-minibuffer-window-p)
              :help "Read a directory, to operate on its files"
              :image ,(custom-tool-bar--image-expression "folder")))

(define-key tool-bar-map [new-file]
  `(menu-item "Visit New File..." find-file
              :enable (menu-bar-non-minibuffer-window-p)
              :help "Specify a new file's name, to edit the file"
              :image ,(custom-tool-bar--image-expression "new")))

;; Configure other mode tool bars
(setq isearch-tool-bar-map (make-sparse-keymap))
(setq info-tool-bar-map (make-sparse-keymap))
(setq message-tool-bar-map (make-sparse-keymap))

(provide 'toolbar-init)
