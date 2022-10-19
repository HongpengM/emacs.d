(require 'use-package)

(use-package lsp-mode
  :ensure t
  )
(use-package lsp-haskell
  :ensure t
  :requires lsp-mode
  :config
  (progn
    (add-hook 'haskell-mode-hook #'lsp)
    (setq lsp-haskell-process-path-hie "hie-wrapper")))

(use-package eglot
  :ensure t
  :requires go-mode
  :config
  (progn
    ;;    (when (memq window-system '(mac ns))
    ;;      (exec-path-from-shell-initialize))
    ;;      (exec-path-from-shell-copy-env "GOPATH")
    (add-to-list 'eglot-server-programs
		 '(go-mode . ("go-langserver")))))

(provide 'init-lsp)
