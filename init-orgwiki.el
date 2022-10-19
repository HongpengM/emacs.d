

;; ;;==============================
;; ;;     Org-mode and extensions  Settings
;; ;;==============================

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 					; El-get install org wiki script, eval buffer  ;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 					;(el-get-bundle org-wiki
;; 					;  :url "https://raw.githubusercontent.com/caiorss/org-wiki/master/org-wiki.el"
;; 					;  :description "Emacs' desktop wiki built with org-mode"
;; 					;  :features org-wiki

;; (require 'org-wiki)
;; (progn 
;; 	    (setq org-wiki-location-list '( "~/org-wiki" ;; First wiki (root directory) is the default.
;; 					    "~/People"
;; 					    "~/Documents/Career/wiki"
;; 					    "~/Documents/Language/wiki"
;; 					    ;;"~/Documents/wiki2 "
;; 					    ;;"~/Documents/wiki3"
;; 					    ))

;; 	    ;; Initialize first org-wiki-directory or default org-wiki
;; 	    (setq org-wiki-location (car org-wiki-location-list)) 
;; 	    (setq org-wiki-default-read-only nil) ;; Default value
;; 	    (setq org-wiki-server-port "8000") ;; 8000 - default value
;; 	    (setq org-wiki-server-host "127.0.0.1") ;; Listen only localhost
;; 	    ;; (setq org-wiki-clip-jar-path "~/bin/opt/clip.jar")



;; 	    (setq org-wiki-template (string-trim "
;; #+INCLUDE: theme/style.org
;; #+TITLE: %n
;; #+LATEX_HEADER: \\usepackage{fontspec}
;; #+LATEX_HEADER: \\setmainfont{Times New Roman}
;; #+LATEX_HEADER: \\setCJKmainfont[ItalicFont={STKaiti}]{STSong}
;; #+DESCRIPTION:
;; #+KEYWORDS:
;; #+STARTUP:  content
;; #+DATE: %d

;; - [[wiki:index][Index]]

;; - Related:

;; * %n
;; ")))






;; (provide 'init-orgwiki)
