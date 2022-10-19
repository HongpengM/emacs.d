(require 'use-package)

(use-package dockerfile-mode
  :mode "Dockerfile\\'"
  :config
  (put 'dockerfile-image-name 'safe-local-variable #'stringp)
  )

(provide 'init-docker)
