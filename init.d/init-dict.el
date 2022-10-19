(require 'use-package)

(use-package 
  youdao-dictionary 
  :ensure t
  :config

  ;; Enable Cache
  (setq url-automatic-caching t)

  ;; Example Key binding
  (global-set-key (kbd "C-c C-y") 'youdao-dictionary-search-at-point))

(provide 'init-dict)
