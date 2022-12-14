(require 'use-package)



(use-package visual-regexp-steroids
  :ensure t)

(use-package visual-regexp
  :ensure t
  :requires visual-regexp-steroids
  :bind (("C-c r" . vr/replace)
         ("C-c q" . vr/query-replace)
         ("C-c m" . vr/mc-mark)
         ;; :map esc-map
         ("C-M-r" . vr/isearch-backward)
         ("C-M-s" . vr/isearch-forward)))

(use-package wgrep
  :ensure t)

(use-package grep
  :ensure t
  :defer 1
  :config (progn
            (add-to-list 'grep-find-ignored-directories ".release")
            (add-to-list 'grep-find-ignored-directories ".repos")
            (add-to-list 'grep-find-ignored-directories "auto")
            (add-to-list 'grep-find-ignored-directories "elpa")
            (add-to-list 'grep-find-ignored-directories ".git")
            (add-to-list 'grep-find-ignored-directories ".svn")
            (add-to-list 'grep-find-ignored-directories ".repos")
            (add-to-list 'grep-find-ignored-directories ".release")
            (add-to-list 'grep-find-ignored-directories "xwiki")
            (add-to-list 'grep-find-ignored-directories "target")
            (add-to-list 'grep-find-ignored-directories "xwiki-raven")
            (add-to-list 'grep-find-ignored-directories "node_modules")
            (add-to-list 'grep-find-ignored-directories ".sass-cache")
            (add-to-list 'grep-find-ignored-directories "resources/public/js")
            (add-to-list 'grep-find-ignored-files "package-lock.json")
            (add-to-list 'grep-find-ignored-files "Cargo.lock")
            (add-hook-exec 'grep-mode (lambda () (toggle-truncate-lines 1)))))

(provide 'init-search)
