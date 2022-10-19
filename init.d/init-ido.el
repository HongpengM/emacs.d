(require 'use-package)

(use-package ido
  :ensure t
  :demand t
  :bind (("C-x C-f" . ido-find-file))
  :commands (ido-switch-buffer)
  :config
  (ido-mode 1)
  (ido-everywhere 1))

(use-package flx
  :ensure t)

(use-package flx-ido
  :ensure t
  :requires flx ido
  :config
  (flx-ido-mode 1)
  (setq ido-enable-flex-matching t)
  (setq ido-use-faces t))

(use-package ido-at-point
  :ensure t
  :requires ido
  :config (ido-at-point-mode 1))

(provide 'init-ido)
