(require 'use-package)

(use-package haskell-snippets
  :requires yasnippet)
(use-package haskell-mode
  :ensure t
  :mode "\\.hs\\'"
  ;;  (add-to-list 'auto-mode-alist )
  )
(provide 'init-haskell)
