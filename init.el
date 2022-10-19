
;;; package --- Summary
;;; Commentary:

;;; Code: goes here


(package-initialize)

(require 'package)


;;; ###
;;Set url proxy method
(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
	("http" . "127.0.0.1:20171")
	("https" . "127.0.0.1:20171")))

;; bootstrap utils

(defconst my-custom-file "~/.emacs.d/custom-2.el")

(setq custom-file my-custom-file)
(setq package-enable-at-startup nil)
(load my-custom-file t)
(setq auto-save-default nil)
(setq make-backup-files nil)

;;(put 'erase-buffer 'disabled nil)

;; turn off sctartup screen

(setq inhibit-splash-screen t)
(setq initial-scratch-message "\n\n\n\n\n\n==============================\n
     ***** Happy Hacking *****\n
============================== \n\n\n\n\n\n")


;; load extensions

;; (package-initialize)
(add-hook 'after-init-hook (lambda () 
			     (load "~/.emacs.d/init-real.el")))

;; Mac Key settings

(when (eq system-type 'darwin)
  ;; use all the special keys on the mac keyboard
  (setq mac-option-modifier 'meta
	;;        ns-function-modifier 'super 
	;;        mac-right-option-modifier 'alt
	mac-command-modifier 'meta)

  ;; Allow editing of OSX binary .plist files.
  (add-to-list 'jka-compr-compression-info-list
               ["\\.plist$"
		"converting text XML to binary plist"
		"plutil"
		("-convert" "binary1" "-o" "-" "-")
		"converting binary plist to text XML"
		"plutil"
		("-convert" "xml1" "-o" "-" "-")
		nil nil "bplist"])

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
    (setq mac-function-modifier 'super))
  )




;; elpa

(setq package-archives '(
			 ("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ;;("marmalade" . "https://marmalade-repo.org/packages/")
			 ))


(put 'downcase-region 'disabled nil)
