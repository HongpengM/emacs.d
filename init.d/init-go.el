(require 'use-package)
(use-package 
  go-mode 
  :ensure t 
  :mode "\\.go\\'" 
  :interpreter "go" 
  :config (progn 
			(setq tab-width 4) 
			(setq indent-tabs-mode 1)
			(add-hook 'before-save-hook 'gofmt-before-save)))
(provide 'init-go)
