(require 'use-package)

(use-package emr
  :ensure t
  :commands emr-show-refactor-menu
  :init (progn
	  (define-key emacs-lisp-mode-map (kbd "M-RET") 'emr-show-refactor-menu)
	  (define-key lisp-interaction-mode-map (kbd "M-RET") 'emr-show-refactor-menu)):config
  (emr-initialize))

(use-package litable :ensure t
  :commands litable-mode)

(use-package eldoc
  :ensure t
  :commands eldoc-mode
  :init (progn
	  (add-hook-exec 'emacs-lisp-mode 'eldoc-mode)
	  (add-hook-exec 'lisp-interaction-mode 'eldoc-mode)))

(use-package lisp-mode
  :requires flycheck
  :commands lisp-mode
  :bind (("C-c C-k" . eval-buffer)):config
  (add-hook-exec 'emacs-lisp-mode
		 (lambda ()
		   (setq flycheck-disabled-checkers '(emacs-lisp-checkdoc)))))

(use-package elisp-slime-nav
  :ensure t
  :commands elisp-slime-nav-mode
  :init (progn
	  (add-hook-exec 'emacs-lisp-mode 'elisp-slime-nav-mode)
	  (add-hook-exec 'lisp-interaction-mode 'elisp-slime-nav-mode)))

(use-package ert-modeline
  :ensure t
  :commands ert-modeline-mode
  :init (add-hook-exec 'emacs-lisp-mode 'ert-modeline-mode))

(use-package overseer
  :ensure t
  :requires f
  :commands overseer-mode
  :init (add-hook-exec 'emacs-lisp-mode 'overseer-mode))

(use-package el-mock :ensure t
  :requires lisp-mode)

(use-package ert-expectations :ensure t
  :requires lisp-mode)

(use-package undercover :ensure t
  :requires lisp-mode)


(use-package dash
  :ensure t
  :config (dash-enable-font-lock))


(require 'srefactor)
(require 'srefactor-lisp)

(provide 'init-elisp)
