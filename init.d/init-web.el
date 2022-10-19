(require 'use-package)

;; http repl

(use-package httprepl
  :ensure t
  :requires (s dash)
  :commands httprepl)

;; restclient

(use-package restclient
  :ensure t
  :mode ("\\.rest\\'" . restclient-mode))

(use-package company-restclient
  :ensure t
  :requires (restclient company)
  :config (add-to-list 'company-backends 'company-restclient))


;; xml generation dsl

(use-package xmlgen
  :ensure t
  :commands xmlgen)

;; html templates editing

(use-package sgml-mode
  )

(use-package emmet-mode
  :ensure t
  :requires (css-mode sgml-mode web-mode)
  :commands emmet-mode
  :init (progn (add-hook-exec 'sgml-mode 'emmet-mode)
               (add-hook-exec 'css-mode 'emmet-mode)
	       (add-hook-exec 'web-mode 'emmet-mode)))

(use-package web-mode
  :ensure t
  :commands web-mode
  :mode (("\\.html\\'" . web-mode)))

(use-package scss-mode
  :ensure t
  :mode ("\\.scss\\'" . scss-mode))

(use-package css-mode
  :config (setq css-indent-offset 2))

(use-package django-mode
  :ensure t
  :mode ("\\.djhtml\\'" . django-html-mode))



(provide 'init-web)
