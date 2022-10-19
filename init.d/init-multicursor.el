(require 'use-package)

(use-package 
  multiple-cursors 
  :ensure t 
  :demand t 
  :config (progn (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines) 
		 (global-set-key (kbd "C->") 'mc/mark-next-like-this) 
		 (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
		 (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
		 (global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
		 (global-set-key (kbd "C-c C->") 'mc/mark-next-word-like-this)
		 (global-set-key (kbd "C-c C-<") 'mc/mark-previous-word-like-this)))


(use-package phi-search
  :ensure t
  :requires multiple-cursors
  )
(provide 'init-multicursor)
