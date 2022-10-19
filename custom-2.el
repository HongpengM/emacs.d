;; Interactive-do-mode on

(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%d | ")		;set format

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Auto reload buffer when file change
(global-auto-revert-mode t)

;; Insert today's date
(defun insert-current-date () 
  (interactive) 
  (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))

(when (eq system-type 'darwin)
  ;; Support for Fira Code Font
  (when (version< emacs-version "27.0")
    (mac-auto-operator-composition-mode)))
 
;; Set Fira Code-16
(set-face-attribute 'default nil 
		      :font "Fira Code-16" )



;; 3. Automatically refresh package content
(when (not package-archive-contents) 
  (package-refresh-contents))
;; Previously added Custom variables
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-names-vector
;;    ["#151515" "#953331" "#546a29" "#909737" "#385e6b" "#7f355e" "#34676f" "#c6a57b"])
;;  '(custom-safe-themes
;;    '("30289fa8d502f71a392f40a0941a83842152a68c54ad69e0638ef52f04777a4c" "d2868794b5951d57fb30bf223a7e46f3a18bf7124a1c288a87bd5701b53d775a" default))
;;  '(fci-rule-color "#151515")
;;  '(global-company-mode t)
;;  '(org-fontify-whole-heading-line t)
;;  '(package-selected-packages
;;    '(use-package elpy htmlize nvm js-comint dockerfile-mode ensime paredit epm geiser julia-mode company-tern xref-js2 js2-refactor js2-mode  markdown-mode magit projectile web-mode))
;;  '(pdf-view-midnight-colors '("#FDF4C1" . "#282828"))
;;  '(pos-tip-background-color "#36473A")
;;  '(pos-tip-foreground-color "#FFFFC8")
;;  '(window-divider-default-right-width 1)
;;  '(window-divider-mode t))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(doom-themes yasnippet yaml-mode django-mode scss-mode web-mode emmet-mode xmlgen company-restclient restclient httprepl auto-package-update wgrep visual-regexp-steroids geiser ensime sbt-mode scala-mode flx-isearch exec-path-from-shell org-download org-bullets nov phi-search multiple-cursors eglot lsp-haskell lsp-mode org2ctex julia-mode json-mode json-reformat rjsx-mode js2-mode ido-at-point flx-ido helm-books helm-themes helm-github-stars helm-descbinds helm-swoop helm-helm-commands helm-company helm-gitignore helm-proc helm-google ace-jump-helm-line helm-flx helm intero haskell-mode graphviz-dot-mode go-mode magit flycheck-pos-tip flycheck undercover ert-expectations el-mock overseer ert-modeline elisp-slime-nav litable emr dired-launch dired-open dired-rainbow youdao-dictionary deft dart-mode company-quickhelp shell-pop company-shell bash-completion nameless diff-hl smartrep rainbow-mode rainbow-delimiters fic-mode anzu material-theme sublime-themes plan9-theme yoshi-theme jazz-theme darktooth-theme gruvbox-theme kaolin-themes gotham-theme soothe-theme smart-mode-line nyan-mode load-dir req-package use-package-chords use-package-el-get use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
