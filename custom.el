;; Show line number
;;(global-linum-mode t)			; always show line numbers
;; linum-mode on programming mode
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%d| ")		;set format

;; Support for Fira Code Font
(when (eq system-type 'darwin)
  (mac-auto-operator-composition-mode))

;;(electric-pair-mode t)

;;------------------------------

;;-------------------------------
;; Insert today's date
(defun insert-current-date ()
  (interactive)
  (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))

;; Interactive-do-mode on
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Set Socks 5 proxy
(setq socks-noproxy '("127.0.0.1"))
(setq url-gateway-method 'socks)
(when (eq system-type 'gnu/linux) ;; In Linux use v2a
  (setq socks-server '("Default server" "127.0.0.1" 20170 5)))

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
(global-set-key (kbd "C-c w <left>")  'windmove-left)
(global-set-key (kbd "C-c w <right>") 'windmove-right)
(global-set-key (kbd "C-c w <up>")    'windmove-up)
(global-set-key (kbd "C-c w <down>")  'windmove-down)
;; Frame move binds with wind move
;; Add framemove to load path
(add-to-list 'load-path "~/.emacs.d/package_manual")

;; 3. Automatically refresh package content
(when (not package-archive-contents)
  (package-refresh-contents))


;; Install pdf-tools
;;(pdf-tools-install)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#FDF6E3" :foreground "#556b72" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "nil" :family "Fira Code")))))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#F0F4FC" "#99324B" "#4F894C" "#9A7500" "#3B6EA8" "#97365B" "#398EAC" "#485163"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "cde54495995d0698c4a5b271647925044031d8f88f0e56f8836b0cc7e61d9c81" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" default)))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#AEBACF")
 '(fringe-mode 4 nil (fringe))
 '(hl-sexp-background-color "#1c1f26")
 '(jdee-db-active-breakpoint-face-colors (cons "#F0F4FC" "#5d86b6"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#F0F4FC" "#4F894C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#F0F4FC" "#B8C5DB"))
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(markdown-command "/usr/local/bin/macdown")
 '(ns-alternate-modifier (quote meta))
 '(org-agenda-files
   (quote
    ("~/Orgs/today.org" "~/Orgs/company.org" "~/Orgs/application.org" "/Users/k/org-wiki/Apache Server.org" "/Users/k/org-wiki/Automata.org" "/Users/k/org-wiki/Bit torrent download server.org" "/Users/k/org-wiki/Books.org" "/Users/k/org-wiki/C++ API design.org" "/Users/k/org-wiki/C++ IDE.org" "/Users/k/org-wiki/C++.org" "/Users/k/org-wiki/CMake.org" "/Users/k/org-wiki/CS & Tech.org" "/Users/k/org-wiki/Careers.org" "/Users/k/org-wiki/China 1840 to now.org" "/Users/k/org-wiki/China.org" "/Users/k/org-wiki/China:1912-1949.org" "/Users/k/org-wiki/Compile.org" "/Users/k/org-wiki/Computer & Tech Related.org" "/Users/k/org-wiki/Computer Science.org" "/Users/k/org-wiki/Container.org" "/Users/k/org-wiki/Cpp Test Framework.org" "/Users/k/org-wiki/Crypto.org" "/Users/k/org-wiki/Database.org" "/Users/k/org-wiki/DevOps.org" "/Users/k/org-wiki/Docker.org" "/Users/k/org-wiki/Emacs Env Settings.org" "/Users/k/org-wiki/Emacs LISP (elisp).org" "/Users/k/org-wiki/Emacs Latex Extensions.org" "/Users/k/org-wiki/Emacs Mode Skills.org" "/Users/k/org-wiki/Emacs PDF extensions.org" "/Users/k/org-wiki/Emacs.org" "/Users/k/org-wiki/Email for Emacs.org" "/Users/k/org-wiki/English Test.org" "/Users/k/org-wiki/GPU Programming.org" "/Users/k/org-wiki/Git.org" "/Users/k/org-wiki/Gitlab-runner.org" "/Users/k/org-wiki/Graduate Projects.org" "/Users/k/org-wiki/Graphics Programming.org" "/Users/k/org-wiki/Graphviz Extension.org" "/Users/k/org-wiki/Hacker Life.org" "/Users/k/org-wiki/History.org" "/Users/k/org-wiki/Huawei CFO.org" "/Users/k/org-wiki/IRC.org" "/Users/k/org-wiki/International Politics.org" "/Users/k/org-wiki/JavaScript.org" "/Users/k/org-wiki/Knowledge Bank.org" "/Users/k/org-wiki/Knowledge Management Tools.org" "/Users/k/org-wiki/LISP.org" "/Users/k/org-wiki/Linux Kernel.org" "/Users/k/org-wiki/MongoDB.org" "/Users/k/org-wiki/Node.org" "/Users/k/org-wiki/NodeJS.org" "/Users/k/org-wiki/On China Henry Kissinger.org" "/Users/k/org-wiki/OpenGL Notes.org" "/Users/k/org-wiki/OpenGL.org" "/Users/k/org-wiki/Operating Systems.org" "/Users/k/org-wiki/Org.org" "/Users/k/org-wiki/PPT Extension.org" "/Users/k/org-wiki/Package Management.org" "/Users/k/org-wiki/Personal Site.org" "/Users/k/org-wiki/Politics.org" "/Users/k/org-wiki/Problems Lists.org" "/Users/k/org-wiki/Programming Language.org" "/Users/k/org-wiki/Projects.org" "/Users/k/org-wiki/Prospective & Outline.org" "/Users/k/org-wiki/Public Politics.org" "/Users/k/org-wiki/Recursive Functions of Symbolic Expressions and Their Computation by Machine -- McCarthy 1960.org" "/Users/k/org-wiki/Redis.org" "/Users/k/org-wiki/Reference Letter.org" "/Users/k/org-wiki/Resume.org" "/Users/k/org-wiki/Schools & Tests.org" "/Users/k/org-wiki/Science & Technology.org" "/Users/k/org-wiki/Shell.org" "/Users/k/org-wiki/TOEFL test.org" "/Users/k/org-wiki/Terminal & Zsh.org" "/Users/k/org-wiki/The Structure and Intepretation of Computer Programs (SICP).org" "/Users/k/org-wiki/Tools.org" "/Users/k/org-wiki/UNIX network programming.org" "/Users/k/org-wiki/Ubuntu.org" "/Users/k/org-wiki/Web Server.org" "/Users/k/org-wiki/What is Strategy by Michael E. Porter.org" "/Users/k/org-wiki/egg.js.org" "/Users/k/org-wiki/gcc & g++.org" "/Users/k/org-wiki/index.org" "/Users/k/org-wiki/mocha.org" "/Users/k/org-wiki/org-wiki.org" "/Users/k/org-wiki/test2.org")))
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages
   (quote
    (htmlize org-wiki nvm js-comint dockerfile-mode ensime paredit epm geiser julia-mode company-tern xref-js2 js2-refactor js2-mode org-wiki markdown-mode magit projectile web-mode elpy)))
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(rainbow-delimiters-max-face-count 8)
 '(safe-local-variable-values
   (quote
    ((org-download-image-dir . "~/org-wiki/C++ API design/")
     (encoding . utf-8))))
 '(vc-annotate-background "#E5E9F0")
 '(vc-annotate-color-map
   (list
    (cons 20 "#4F894C")
    (cons 40 "#688232")
    (cons 60 "#817b19")
    (cons 80 "#9A7500")
    (cons 100 "#a0640c")
    (cons 120 "#a65419")
    (cons 140 "#AC4426")
    (cons 160 "#a53f37")
    (cons 180 "#9e3a49")
    (cons 200 "#97365B")
    (cons 220 "#973455")
    (cons 240 "#983350")
    (cons 260 "#99324B")
    (cons 280 "#a0566f")
    (cons 300 "#a87b93")
    (cons 320 "#b0a0b6")
    (cons 340 "#AEBACF")
    (cons 360 "#AEBACF")))
 '(vc-annotate-very-old-color nil)
 '(window-divider-default-right-width 1)
 '(window-divider-mode t))



