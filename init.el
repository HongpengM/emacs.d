
;;; package --- Summary
;;; Commentary:

;;; Code: goes here


(package-initialize)

(require 'package)


(load "~/.emacs.d/interface.el")
(load "~/.emacs.d/platform.el")

;; bootstrap utils

(defconst my-custom-file "~/.emacs.d/custom-2.el")

(setq custom-file my-custom-file)
(setq package-enable-at-startup nil)
(load my-custom-file t)
(setq auto-save-default nil)
(setq make-backup-files nil)

;;(put 'erase-buffer 'disabled nil)

;; load extensions
;; (package-initialize) | 代入环境变量
(add-hook 'after-init-hook
	  (lambda ()
	    (load "~/.emacs.d/init-real.el")))

;; Package Archives | 软件源
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ))
(put 'downcase-region 'disabled nil)
