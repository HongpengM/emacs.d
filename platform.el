;; SET PLATFORM

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; NETWORK Proxy | 设置代理 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ubuntu

(cond ((eq system-type 'darwin)
       (setq url-proxy-services '(("no_proxy" . "^\\(localhost\\|10.*\\)")
			     ("http" . "127.0.0.1:1087")
			     ("https" . "127.0.0.1:1087"))))
      ((string-match "-[Mm]icrosoft" operating-system-release)
       nil )
       ;; (setq url-proxy-services '(("no_proxy" . "^\\(localhost\\|10.*\\)")
       ;; 			     ("http" . "172.31.48.1:10811")
       ;; 			     ("https" . "172.31.48.1:10811"))))
      ((eq system-type 'gnu/linux)
       (setq url-proxy-services '(("no_proxy" . "^\\(localhost\\|10.*\\)")
			     ("http" . "127.0.0.1:20171")
			     ("https" . "127.0.0.1:20171"))))
      (t ""))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Mac Key settings | Mac 键位设置 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (eq system-type 'darwin)
  ;; use all the special keys on the mac keyboard
  (setq mac-option-modifier 'meta
	;;        ns-function-modifier 'super 
	;;        mac-right-option-modifier 'alt
	mac-command-modifier 'meta)
  ;; Allow editing of OSX binary .plist files.
  (add-to-list 'jka-compr-compression-info-list
	       ["\\.plist$" "converting text XML to binary plist"
		"plutil"
		("-convert" "binary1" "-o" "-" "-")
		"converting binary plist to text XML"
		"plutil"
		("-convert" "xml1" "-o" "-" "-")
		nil
		nil
		"bplist"])
  ;;It is necessary to perform an update!

  (jka-compr-update)
  (defun mac-option-none ()
    (interactive)
    (setq mac-option-modifier 'nil))
  (defun mac-option-meta ()
    (interactive)
    (setq mac-option-modifier 'meta))
  (defun mac-option-super ()
    (interactive)
    (setq mac-option-modifier 'super))
  (defun mac-fn-default ()
    (interactive)
    (setq mac-function-modifier '(:button 2)))
  (defun mac-fn-super ()
    (interactive)
    (setq mac-function-modifier 'super)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Support for Fira Code Font ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(when (eq system-type 'darwin)
;;  (mac-auto-operator-composition-mode))
(when (eq system-type 'darwin)
  ;; Support for Fira Code Font
  (when (version< emacs-version "27.0")
    (mac-auto-operator-composition-mode)))
(when (eq system-type 'darwin)
  (load "~/.emacs.d/init-real.el"))
