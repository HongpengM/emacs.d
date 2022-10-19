;; (require 'elpy)
;; (require 'use-package)
;; (setq python-shell-interpreter "/usr/local/bin/python3")
;; (elpy-enable)
;; (setq elpy-rpc-python-command "python3")

;; ;;==============================
;; ;; Jedi: Python autocomplete
;; ;;==============================
;; ;; Jedi for python autocompletion
;; ;; install jedi server to start auto completion
;; ;; M-x jedi:install-server
;; (setq python-environment-virualenv "/Users/k/anaconda3/bin/virtualenv")
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)

;; (use-package ein
;;   :ensure t
;;   ;;:pin melpa-stable
;;   )

;; (provide 'init-python)
