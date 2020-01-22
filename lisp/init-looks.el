;;; init-looks.el --- customize emacs looks -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (when (< emacs-major-version 27)
;;   (eval-and-compile
;;     (package-initialize)))

(setq inhibit-startup-screen t)

;; theme
;; (add-hook 'after-init-hook (lambda () (load-theme 'nimbus t)))
(add-hook 'after-init-hook
	  (lambda () (load-theme 'sanityinc-tomorrow-bright t)))

;; Disable menu-bar, tool-bar and scroll-bar. What is the use of emacs
;; if you are using these mouseee features.

;; menuBar
;; (menu-bar-mode +1)
(menu-bar-mode -1)

;; scrollBar
;; (scroll-bar-mode +1)
(scroll-bar-mode -1)

;; toolBar
;; (tool-bar-mode +1)
(tool-bar-mode -1)

;; tabBar
;; (setq tab-bar-show 1)
;; (tab-bar-mode +1)
;; (tab-bar-mode -1)

;; default to Ibuffer
;; (global-set-key (kbd "C-x C-b") #'ibuffer-other-window)
(global-set-key (kbd "C-x C-b") #'ibuffer)

;; browser settings eww
(setq browse-url-browser-function 'eww-browse-url)
;; (setq shr-color-visible-distance-min 100)
(defvar shr-color-visible-luminance-min)
(setq shr-color-visible-luminance-min 70)

;; cursor
;; (blink-cursor-mode t)
(global-hl-line-mode +1)

;; mode-line
;; (display-time-mode +1)
(eval-when-compile (require 'delight))
(delight '((which-key-mode nil "which-key")
	   (company-mode nil "company")
	   (yas-minor-mode nil "yasnippet")
	   (hs-minor-mode nil "hideshow")
	   (eldoc-mode nil "eldoc")
	   (projectile-mode nil  "projectile")))

(provide 'init-looks)
;;; init-looks.el ends here
