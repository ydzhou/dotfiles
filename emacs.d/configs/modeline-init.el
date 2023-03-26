(defvar mode-line-toggle-treemacs-map
  (let ((map (make-sparse-keymap)))
    (define-key map [mode-line mouse-1]
      (lambda (_e)
        (interactive "e")
        (treemacs)))
    map))

(setq mode-line-end-spaces
      '(""
        (vc-mode vc-mode)
        mode-line-modes
        mode-line-misc-info
        ))

(defun custom-mode-line--separator ()
  (let ((r-length (length (format-mode-line mode-line-end-spaces))))
    (propertize " " 'display `(space :align-to (- right ,r-length)))))

(setq-default mode-line-format
      '(
       (:eval (propertize (propertize (all-the-icons-faicon "bars")
            'face `(:family ,(all-the-icons-faicon-family)) 'mouse-face 'mode-line-highlight 'display '(raise -0.1))
                          'local-map mode-line-toggle-treemacs-map))
       "  %e  "
       mode-line-front-space
       mode-line-mule-info
       mode-line-modified
       mode-line-remote
       mode-line-frame-identification
       "  "
       mode-line-buffer-identification
       "  "
       mode-line-position
       (:eval (custom-mode-line--separator))
       mode-line-end-spaces
       ))

(provide 'modeline-init)
