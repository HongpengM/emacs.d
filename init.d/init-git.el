(require 'use-package)

(use-package magit
  :ensure t
  :demand t
  :bind  (("C-x g" . magit-status))
  ;;:config
  ;; Magit panel
;;  (global-set-key (kbd "C-x g") 'magit-status))
  )
(provide 'init-git)
