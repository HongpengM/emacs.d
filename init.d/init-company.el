(require 'use-package)
(use-package 
  company 
  :ensure t
  :demand t
  :init 
  :requires yasnippet 
  :config (progn
	    (setq company-show-numbers t)
	    ;;(setq company-minimum-prefix-length 2)
	    ;;(setq company-dabbrev-downcase nil)
	    (setq company-dabbrev-other-buffers t)
	    (setq company-auto-complete t)
	    (setq company-dabbrev-code-other-buffers 'all) 
	    (setq company-dabbrev-code-everywhere t) 
	    (setq company-dabbrev-code-ignore-case t)
	    (global-company-mode)
	    (add-hook 'after-init-hook 'global-company-mode))
  ;;
  )

(use-package 
  company-quickhelp 
  :ensure t 
  :requires company 
  :config (company-quickhelp-mode 1))

(provide 'init-company)
