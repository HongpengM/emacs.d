(require 'use-package)

(use-package helm
  :ensure t
  :demand t
  :commands (helm-bookmarks)
  :bind (("C-x C-b" . helm-buffers-list)
         ("C-c y" . helm-show-kill-ring)
         ("C-x C-r" . helm-recentf)
         ("C-x r l" . helm-bookmarks))
  :config (progn (require 'helm-config)
		 (global-set-key (kbd "M-x") 'helm-M-x)
	   )
  )


;; (use-package helm-flx
;;   :ensure t
;;   :config (helm-flx-mode +1)
;;   (setq helm-flx-for-helm-find-files t
;;         helm-flx-for-helm-locate t))

(use-package ace-jump-helm-line
  :ensure t
  :commands ace-jump-helm-line
  :requires helm
  :init (define-key helm-map (kbd "C-;") 'ace-jump-helm-line))

(use-package helm-google
  :ensure t
  :commands helm-google)

(use-package helm-proc
  :ensure t
  :commands helm-proc
  :requires helm)


(use-package helm-company
  :ensure t
  :requires company
  :commands helm-company
  :config (progn (define-key company-mode-map (kbd "C-:") 'helm-company)
                 (define-key company-active-map (kbd "C-:") 'helm-company)))

(use-package helm-helm-commands
  :ensure t
  :commands helm-helm-commands
  :requires helm)

(use-package helm-swoop
  :ensure t
  :commands helm-swoop-from-isearch
  :requires helm
  :init (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch))

(use-package helm-descbinds
  :ensure t
  :commands helm-descbinds
  :requires helm)


(use-package helm-themes
  :ensure t
  :commands helm-themes
  :requires helm)

(use-package helm-books
  :ensure t
  :commands helm-books
  :requires helm)

(provide 'init-helm)
