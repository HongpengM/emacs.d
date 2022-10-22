(require 'use-package)

(use-package org
  :ensure t
  :demand t
  :mode ("\\.org$" . org-mode):bind
  (("C-c l" . org-store-link)
   ("C-c c" . org-capture)
   ("C-c a" . org-agenda)
   ("C-'" . org-cycle-agenda-files)
   ("C-c b" . org-iswitchb))
  :config (progn
            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;; Org-mode Basics 基础配置 ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (define-key org-mode-map (kbd "C-M-\\") 'org-indent-region)
	    
	    (setq org-tags-column -110)
	    (setq org-capture-bookmark t)
	    (setq org-refile-use-outline-path 'file)
	    (setq org-startup-folded 'showeverything)
	    ;; Todo 转换时的记录方式 'time 时间, 'note 笔记
	    (setq org-log-done 'time)
	    (setq org-default-notes-file (concat org-directory "/notes.org"))
	    ;; Org fontify in code blocks
	    (setq org-src-fontify-natively t)
	    (setq org-src-tab-acts-natively t)
	    ; Org columns views settings
	    (setq org-columns-default-format "%40ITEM(Task) %5TODO %5PRIORITY %5Status %10CLOCKSUM %10DEADLINE %10SCHDULED %15TIMESTAMP_IA %5TAGS")
					; org-agenda load files

	    
	    ;; TODO Settings
	    (setq org-todo-keywords '(
				      (sequence "TODO(t!)" "WAIT(w!)" "CLAR(c@)" "MAYB(m)" "|" "DONE(!)" "KILL(k@)" "CHEK(l!)" "ARCH(a@)"))
		  )
	    (setq org-todo-keyword-faces '(("TODO" . (:foreground "#f71c0c"
								  :background "white"
								  :weight bold
								  :slant italic
								  :box (:line-width 1 :color "#f42202"
										    :style "release-button")))
					   ("DONE" . (:foreground "#75f980" :background "#016809"
								  :weight bold))
					   ("ARCH" . (:foreground "#75f980" :background "#016809"
								  :weight bold))
					   ("WAIT" . (:foreground "white" :background "#f98125"
								  :weight bold))
					   ("CLAR" . (:foreground "white" :background "#f44242"
								     :weight bold))
					   ("BUG" . (:foreground "yellow" :background "red"
								 :weight bold))
					   ("MAYB" . (:foreground "white" :background "#cb4df9"
									:weight bold))
					   ("CHEK" . (:foreground "red" :background "yellow"
									     :weight bold))
					   ("KILL" . (:foreground "blue" :background "#95d5f9"
								      :weight bold))))
	    (org-babel-do-load-languages 'org-babel-load-languages
					 '(
					   ;; ...
					   (python . t)
					   (js . t)))))


(use-package org-bullets
  :ensure t
  :config (add-hook 'org-mode-hook
		    (lambda ()
		      (org-bullets-mode t))))


(use-package org-download :ensure t
  :requires org
  :demand t)

(provide 'init-org)
