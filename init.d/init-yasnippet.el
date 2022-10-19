(require 'use-package)

(use-package yasnippet
  :ensure t
  :demand t
  :config (progn (yas-global-mode t)
		 (add-to-list 'yas-snippet-dirs "~/.emacs.d/packages/yasnippet-go")
                 (define-key yas-minor-mode-map (kbd "C-M-y") 'yas-expand)))

(provide 'init-yasnippet)
