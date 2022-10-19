(require 'use-package)


(use-package 
  dart-mode 
  :requires eglot 
  :ensure t 
  :config
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
					;       Language Server Settings      ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; https://github.com/bradyt/dart-mode/wiki/LSP
  (defun project-try-dart (dir) 
    (let ((project (or (locate-dominating-file dir "pubspec.yaml") 
		       (locate-dominating-file dir "BUILD")))) 
      (if project (cons 'dart project) 
	(cons 'transient dir)))) 
  (add-hook 'project-find-functions #'project-try-dart) 
  (cl-defmethod 
    project-roots
    ((project (head dart))) 
    (list (cdr project)))

  ;; Elgot Language analysis server
  (add-to-list 'eglot-server-programs '(dart-mode . ("dart_language_server")))

)




(provide 'init-dart)
