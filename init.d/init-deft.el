(require 'use-package)


(use-package deft 
  :ensure t 
  :config 
  (setq deft-extensions '("org" "txt" "tex" )) 
  (setq deft-directory "~/deft")
					; Recursively search files in deft-directory
  (setq deft-recursive t) 
  (global-set-key [f8] 'deft) 
  (setq deft-use-filename-as-title t) 
  (setq deft-file-naming-rules '((noslash . "-") 
				 (nospace . "-") 
				 (case-fn . downcase)))
  )



(provide 'init-deft)
