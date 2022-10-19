(require 'use-package)

(use-package bash-completion
  :ensure t
  :requires shell
  :commands bash-completion-dynamic-complete
  :init
  (setq explicit-shell-file-name "bash")
  (setq comint-process-echoes t)
  (setq bash-completion-process-timeout 0.5)
  (add-hook-exec 'shell-mode 'shell-dynamic-complete-functions
                 'bash-completion-dynamic-complete)
  (add-hook-exec 'shell-mode 'shell-command-complete-functions
                 'bash-completion-dynamic-complete))

(use-package company-shell
  :ensure t)

(use-package shell-pop
  :ensure t
  :bind ("M-\"" . shell-pop))

(provide 'init-bash)
