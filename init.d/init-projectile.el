(require 'use-package)
(use-package projectile
  :ensure t
  :diminish projectile-mode
  :commands (projectile-find-file
             projectile-find-dir)
  :bind (("C-x f" . projectile-find-file)
         ("C-x d" . projectile-find-dir))
  :config
;;  (add-to-list 'auto-mode-alist '("\\.js\\'" . projectile-mode))
  ;;C-c p p  ;; switch projects
  (progn

    (projectile-global-mode)

    (define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
    ;; Enable hybrid mode to enable ignore files
    (setq projectile-indexing-method 'hybrid)

    (global-set-key (kbd "C-c p p") 'projectile-switch-project)
    ;; C-c p f  ;; list project files
    (global-set-key (kbd "C-c p f") 'projectile--find-file)
    ;;C-c p g  ;; grep project
    (global-set-key (kbd "C-c p g") 'projectile-grep)

    ;; Set projects search path)
    (setq projectile-project-search-path '("~/PrivateHub/"
					   "~/Repos"
					   "~/Repos/Ebond/"
					   "~/PrivateHub/Spiders"))
    ;; Set completion engine
    (setq projectile-completion-system 'ivy)
    )
)

(provide 'init-projectile)
