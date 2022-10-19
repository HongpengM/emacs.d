(require 'use-package)

(use-package 
  windmove
  :ensure t 
  :demand t 
  :config (progn
	    ;;------------------------------
	    ;; 1. Window split redo & undo
	    ;; Package-Install winner-mode
	    ;; Automatically start with winner-mode
	    ;; Winner mode Shortcuts:
	    ;; C-c <- : undo
	    ;; C-c -> : redo
	    (when (fboundp 'winner-mode) 
	      (winner-mode 1))

	    ;; 2. Window split move with directions
	    ;; Window move key bindings
	    (global-set-key (kbd "C-M-<left>")  'windmove-left)
	    (global-set-key (kbd "C-M-<right>") 'windmove-right)
	    (global-set-key (kbd "C-M-<up>")    'windmove-up)
	    (global-set-key (kbd "C-M-<down>")  'windmove-down)))

(provide 'init-wind)
