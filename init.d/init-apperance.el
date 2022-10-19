(require 'use-package)

;; cursor configuration

(setq-default cursor-type 'box)
(blink-cursor-mode 1)

;; use timeclock

(use-package 
  timeclock 
  :ensure t 
  :config (display-time-mode 1))

;; some very useful extension

(use-package 
  nyan-mode 
  :ensure t 
  :config (setq nyan-animation-frame-interval 0.1) 
  (setq nyan-bar-length 20) 
  (setq nyan-wavy-trail t) 
  (nyan-mode) 
  (nyan-start-animation))

;; customizations

					;(use-package menu-bar
					;  :config
					;  (menu-bar-mode -1))

;; main line

(use-package 
  smart-mode-line 
  :ensure t 
  :config (setq sml/shorten-modes t) 
  (setq sml/shorten-directory t) 
  (setq sml/name-width 20) 
  (setq sml/mode-width 'full) 
  (setq sml/hidden-modes nil) 
  (setq sml/theme nil) 
  (add-to-list 'sml/hidden-modes " Anzu") 
  (add-to-list 'sml/hidden-modes " AC") 
  (add-to-list 'sml/hidden-modes " yas") 
  (add-to-list 'sml/hidden-modes " pair") 
  (add-to-list 'sml/hidden-modes " FIC") 
  (add-to-list 'sml/hidden-modes " Abbrev") 
  (add-to-list 'sml/hidden-modes " ARev") 
  (add-to-list 'sml/hidden-modes " SliNav") 
  (add-to-list 'sml/hidden-modes " ElDoc") 
  (add-to-list 'sml/hidden-modes " company") 
  (add-to-list 'sml/hidden-modes " overseer") 
  (add-to-list 'sml/hidden-modes " Guide") 
  (sml/setup))

;; theme

(defvar my-random-themes nil)
(defvar my-theme-customizations (make-hash-table :test 'equal))

(defun add-theme (theme &optional custom-fn) 
  (add-to-list 'my-random-themes theme) 
  (when custom-fn (puthash theme custom-fn my-theme-customizations)))

;; (normalize-faces (face-list))

(use-package 
  soothe-theme 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'soothe))

(use-package 
  gotham-theme 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'gotham))

(use-package 
  kaolin-themes 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'kaolin-dark) 
  (add-theme 'kaolin-ocean) 
  (add-theme 'kaolin-eclipse))

(use-package 
  gruvbox-theme 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'gruvbox))

(use-package 
  darktooth-theme 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'darktooth))

(use-package 
  jazz-theme 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'jazz))

(use-package 
  yoshi-theme 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'yoshi))

(use-package 
  plan9-theme 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'plan9))

(use-package 
  sublime-themes 
  :ensure t 
  :requires smart-mode-line 
  :defer t 
  :init (add-theme 'junio) 
  (add-theme 'wilson))

(use-package 
  material-theme 
  :ensure t 
  :requires material-mode-line 
  :defer t 
  :init (add-theme 'material))

(defun select-theme 
    (&optional 
     theme) 
  (interactive) 
  (let* ((themes-vec (vconcat my-random-themes)) 
	 (len        (length themes-vec)) 
	 (selection  (or (and (-contains? my-random-themes theme) 
			      theme) 
			 (aref themes-vec (random len))))) 
    (dolist (theme custom-enabled-themes) 
      (disable-theme theme)) 
    (message "selected theme %s" selection) 
    (load-theme selection t)))

(defun load-theme-advice (theme &optional no-confirm no-enable) 
  (let* ((f (gethash theme my-theme-customizations))) 
    (when f (funcall f))))

(advice-add 'load-theme 
	    :after #'load-theme-advice)

(use-package 
  anzu 
  :ensure t 
  :requires smart-mode-line 
  :config
  (global-anzu-mode 1))

(use-package 
  simple 
  :config
  (column-number-mode 1))

					;(use-package tool-bar
					;  :config
					;  (tool-bar-mode -1))
					;
					;(use-package scroll-bar
					;  :config
					;  (scroll-bar-mode -1))

(setq make-pointer-invisible nil)

;; Highlight keyword FIXME & TODO
(use-package fic-mode 
  :ensure t 
  :config
  (add-hook-exec 'prog-mode (lambda () 
				      (fic-mode 1))))

(use-package  rainbow-delimiters 
  :ensure t
  :demand t
  :config
  (add-hook 'prog-mode 'rainbow-delimiters-m)
)
;; rainbow-mode
(use-package rainbow-mode
  :demand t
  :ensure t)


(use-package 
  smartrep 
  :ensure t)

;; Show Diff in buffer
(use-package 
  diff-hl 
  :ensure t 
  :requires smartrep 
  :config (global-diff-hl-mode 1))

;; Hide known package in Elisp
(use-package 
  nameless 
  :ensure t 
  :config (add-hook-exec 'emacs-lisp-mode #'nameless-mode))

(use-package 
  dash 
  :ensure t 
  :config (dash-enable-font-lock))

;; (load-theme 'material t)

(provide 'init-apperance)
