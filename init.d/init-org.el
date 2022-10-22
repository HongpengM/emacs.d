(require 'use-package)



(use-package 
  org 
  :ensure t
  :demand t 
  :mode ("\\.org$" . org-mode) 
  :bind (("C-c l" . org-store-link) 
	 ("C-c c" . org-capture) 
	 ("C-c a" . org-agenda) 
	 ("C-'" . org-cycle-agenda-files) 
	 ("C-c b" . org-iswitchb)) 
  :config (progn 
	    (setq org-default-notes-file (concat org-directory "/notes.org")) 
	    (setq org-tags-column -110) 
	    (setq org-capture-bookmark t) 
	    (setq org-refile-use-outline-path 'file) 
	    (setq org-startup-folded 'showeverything) 
	    (setq org-log-done 'note)

	    ;; TODO change colors to faces using defface
	    (setq org-todo-keyword-faces '(("TODO" .
					    (:foreground "#f71c0c"
							 :background "white"
							 :weight bold
							 :slant italic
							 :box (:line-width 1 :color "#f42202" :style "release-button")))
					   ("DONE" .
					    (:foreground "#75f980"
							 :background "#016809"
							 :weight bold)) 
					   ("WAIT" . 
					    (:foreground "white" 
							 :background "#f98125" 
							 :weight bold)) 
					   ("DELAYED" . 
					    (:foreground "white" 
							 :background "#f44242" 
							 :weight bold)) 
					   ("REPORT" . org-todo) 
					   ("BUG" . 
					    (:foreground "yellow" 
							 :background "red" 
							 :weight bold)) 
					   ("KNOWNCAUSE" . 
					    (:foreground "white" 
							 :background "#cb4df9" 
							 :weight bold)) 
					   ("VERY IMPORTANT!" . 
					    (:foreground "red" 
							 :background "yellow" 
							 :weight bold)) 
					   ("SLEEP" . 
					    (:foreground "blue" 
							 :background "#95d5f9" 
							 :weight bold)) 
					   ("CANCELED" . 
					    (:foreground "blue" 
							 :background "#95d5f9" 
							 :weight bold))))
	    ; Org babel Language Loader
	    (org-babel-do-load-languages 'org-babel-load-languages '(
							 ;; ...
							 (python . t) 
							 (js . t) 
							 (scheme . t) 
							 (dot . t)))
	    (setq org-todo-keywords '((sequence "TODO(t)" "WAIT(w@)" "|" "DONE(d)") 
			  (sequence "REPORT(r@)" "BUG(b@)" "KNOWNCAUSE(k@)" "|" "FIXED(f)") 
			  (sequence "DELAYED(e@)" "|" "CANCELED(c)") 
			  (sequence "VERY IMPORTANT!(v@)" "|" "SLEEP(s@)")))

	    ; Bind tab to yas-expand in org minibuffer
; 	    (add-hook 'minibuffer-setup-hook 'yas-minor-mode)
; 	    (yas--define-parents 'minibuffer-inactive-mode '(org-mode))
					; 	    (define-key minibuffer-local-map [tab] 'yas-expand)
	    ;; Org fontify in code blocks
	    (setq org-src-fontify-natively t)
	    (setq org-src-tab-acts-natively t)
	    ; Org columns overlay settings
	    (setq org-columns-default-format "%40ITEM(Task) %5TODO %5PRIORITY %5Status %10CLOCKSUM %10DEADLINE %10SCHDULED %15TIMESTAMP_IA %5TAGS")
	    ; org-agenda load files
	    (setq org-agenda-files '("~/Orgs/today.org" "~/Orgs/company.org" "~/Orgs/study.org"
				     "~/Orgs/application.org" "~/org-wiki")) 
	    (define-key org-mode-map (kbd "C-M-\\") 'org-indent-region)))
; Org todo keywords


;; org-mode javascript extensions




;;(use-package org-pomodoro
;;  :ensure t
;;  :commands org-pomodoro
;;  :config
;;  (add-hook
;;   'org-pomodoro-finished-hook
;;   (lambda ()
;;     (shell-command "play ~/.emacs.d/pomodoro-stop.mp3")
;;     (browse-url "'https://duckduckgo.com/?q=cats&iax=images&ia=images'")))
;;  (add-hook
;;   'org-pomodoro-break-finished-hook
;;   (lambda ()
;;     (shell-command "play ~/.emacs.d/pomodoro-start.mp3")
;;     (async-shell-command "emacsclient --no-wait ~/Work")))
;;  :bind (("C-c p" . org-pomodoro)))
;;

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () 
			   (org-bullets-mode t))))


(use-package 
  org-download 
  :ensure t
  :requires org
  :demand t)

(provide 'init-org)
