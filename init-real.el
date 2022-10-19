;;;

;;; Codes: go here

;; start emacs server

(require 'server)
(unless (server-running-p)
  (server-start))


(defconst my-init-dir "~/.emacs.d/init.d")
(eval-when-compile (package-initialize))

(defun require-package (package)
  "refresh package archives, check package presence and install if it's not installed"
  (if (null (require package nil t))
      (progn (let* ((ARCHIVES (if (null package-archive-contents)
                                  (progn (package-refresh-contents)
                                         package-archive-contents)
                                package-archive-contents))
                    (AVAIL (assoc package ARCHIVES)))
               (if AVAIL
                   (package-install package)))
             (require package))))

;; use package
(setq use-package-compute-statistics 't)
(require-package 'use-package)
(require 'use-package)

;; el-get

(setq debug-on-error t)
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require-package 'el-get)
(require 'el-get)
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get/el-get/recipes")
(el-get 'sync)

;; :el-get keyword for use-package

(use-package use-package-el-get
  :ensure t
  :config (use-package-el-get-setup))

;; chords

(use-package use-package-chords
  :ensure t)

;; req-package

(use-package req-package
  :ensure t
  :config (req-package--log-set-level 'debug))

;; init.d

(random t)

; (req-package load-dir
;   :ensure t
;   :force t
;   :init
;   (setq force-load-messages nil)
;   (setq load-dir-debug nil)
;   (setq load-dir-recursive nil)
;   :config
;   (load-dir-one my-init-dir)
;   (req-package-finish)
;   (funcall 'select-theme))

(use-package load-dir
  :ensure t
  :demand t
;  :force t
  :init
  (setq force-load-messages nil)
  (setq load-dir-debug nil)
  (setq load-dir-recursive nil)
  :config
  (load-dir-one my-init-dir)
;;  (req-package-finish)
  (funcall 'select-theme))


;; Add exec path from shell ;; after package-initialize
;; by Purcell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))



;;------------------------------
;; Projectile settings
;(require 'projectile)
;;C-c p p  ;; switch projects
;;(global-set-key (kbd "C-c p p") 'projectile-switch-project)
;;C-c p f  ;; list project files
;;(global-set-key (kbd "C-c p f") 'projectile--find-file)
;;C-c p g  ;; grep project
;;(global-set-key (kbd "C-c p g") 'projectile-grep)
;; Set projects search path
;;(setq projectile-project-search-path '("~/Gitlab/" "~/Github/"))

;; ------------------------------
;; Magit settings for Git
;; Magit status shotcut



;;==============================
;; Elpy settings
;;==============================




(provide 'init)
;;; init.el ends here
