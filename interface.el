;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interface & Interactions | 界面和交互 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; cursor configuration | 光标

(setq-default cursor-type 'box)
(blink-cursor-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Startup Scratch | 启动界面 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-splash-screen t) ;; turn off startup screen | 取消欢迎
(setq initial-scratch-message "\n\n\n\n\n\n==============================\n
     ***** Happy Hacking *****\n
============================== \n\n\n\n\n\n")

;;;;;;;;;;;;;;;;;;;;;;
;; Line mode | 行号 ;;
;;;;;;;;;;;;;;;;;;;;;;
(setq linum-format "%d | ")		;set format
(add-hook 'prog-mode-hook 'linum-mode)

;;;;;;;;;;;;;;;;;
;; Font | 字体 ;;
;;;;;;;;;;;;;;;;;
;; Set Fira Code-16
(set-face-attribute 'default nil :font "Fira Code-16")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Default Behaviours | 默认行为 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interactive-do-mode on
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; 文件变动时自动更新 | Auto reload buffer when file change
(global-auto-revert-mode t)

;; 自动更新软件源 | Automatically refresh package content
(when (not package-archive-contents) 
  (package-refresh-contents))


;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Utilities | 便捷函数 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Insert today's date
(defun insert-current-date ()
  (interactive)
  (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))
