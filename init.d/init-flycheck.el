(require 'use-package)

(use-package flycheck
  :ensure t
  :pin melpa-stable
  :config (progn 
                 (set-face-attribute 'flycheck-warning nil
                                     :inherit 'warning
                                     :underline nil)
                 (set-face-attribute 'flycheck-error nil
                                     :inherit 'error
                                     :underline nil)
		 ))

(use-package flycheck-pos-tip
  :ensure t
  :pin melpa-stable
  :commands flycheck-pos-tip-error-messages
  :requires flycheck
  :init (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

(provide 'init-flycheck)
