;;; packages.el --- node-development layer packages file for Spacemacs.
(defconst visual-configuration-packages
  '(solaire-mode
    all-the-icons
    spaceline
    spaceline-all-the-icons))


(defun visual-configuration/init-solaire-mode ()
  (use-package solaire-mode
    :config
    ;; brighten buffers (that represent real files)
    (add-hook 'after-change-major-mode-hook #'turn-on-solaire-mode)

    ;; ...if you use auto-revert-mode:
    (add-hook 'after-revert-hook #'turn-on-solaire-mode)

    ;; You can do similar with the minibuffer when it is activated:
    (add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer)

    ;; To enable solaire-mode unconditionally for certain modes:
    (add-hook 'ediff-prepare-buffer-hook #'solaire-mode)
    )
  )

(defun visual-configuration/init-all-the-icons ()
  (use-package all-the-icons
    :config (setq neo-theme 'icons)))

(defun visual-configuration/init-spaceline ()
  (use-package spaceline))

(defun visual-configuration/init-spaceline-all-the-icons ()
  (use-package spaceline-all-the-icons
    :after spaceline
    :config (progn
              (spaceline-all-the-icons-theme)
              (setq spaceline-all-the-icons-separator-type 'slant))))

;;; packages.el ends here
