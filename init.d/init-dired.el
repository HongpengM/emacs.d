(require 'use-package)

;; single dired

(use-package dired
  :commands dired
  :requires autorevert diff-hl
  :chords (:map dired-mode-map
                ("qq" . dired-up-directory))
  :bind (:map dired-mode-map
              ("M-i" . helm-swoop)
              ("M-RET" . dired-find-file-other-window))
  :config
  (progn
    (add-hook-exec 'dired-mode (lambda ()
                               (diff-hl-dired-mode 1)
                               (setq dired-dwim-target t)))
    (add-hook 'dired-mode-hook 'dired-hide-details-mode))
  )

;; dired rainbow

(use-package dired-rainbow
  :ensure t
  :requires dired)

;; dired open

(use-package dired-open
  :ensure t
  :requires dired)

(use-package dired-launch
  :ensure t
  :requires dired
  :init (dired-launch-enable))

;(use-package dired-details
;  :init (setq-default dired-details-hidden-string "- ")
;  :config (dired-details-install))

(provide 'init-dired)
