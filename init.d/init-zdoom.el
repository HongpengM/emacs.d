(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
;;(load-theme 'doom-solarized-light t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (all-the-icons must be installed!)
(doom-themes-neotree-config)
;; or for treemacs users
(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

;; (let ((height (face-attribute 'default :height)))
;;   ;; for all linum/nlinum users
;;   (set-face-attribute 'linum nil :height height)
;;   ;; only for `linum-relative' users:
;; ;;  (set-face-attribute 'linum-relative-current-face nil :height height)
;;   ;; only for `nlinum-relative' users:
;; ;;  (set-face-attribute 'nlinum-relative-current-face nil :height height)
;;   )
(provide 'init-zdoom)
