;;; init-erc.el --- configure ERC -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'init-pkg)

;; Configure ERC
(require 'erc)
(require 'erc-join)

;; Authentication
(require 'erc-auth (expand-file-name ".erc-auth.el" user-emacs-directory))

(defun connect-irc ()
  "Connect to IRC."
  (interactive)
  (erc :server erc-server :port erc-port
       :nick erc-nick :password erc-password))

(defun connect-irc-tls ()
  "Connect to IRC using SSL."
  (interactive)
  (erc-tls :server erc-server :port erc-port
       :nick erc-nick :password erc-password))

(defun connect-freenode ()
  "Connect to irc.freenode.net."
  (interactive)
  (set-freenode-credentials)
  (connect-irc)
  (unset-credentials))

;; This causes ERC to connect to the Freenode network upon hitting
;; C-c e f.
(global-set-key "\C-cef" 'connect-freenode)

;; Make C-c RET (or C-c C-RET) send messages instead of RET.
(define-key erc-mode-map (kbd "RET") nil)
(define-key erc-mode-map (kbd "C-c RET") 'erc-send-current-line)
(define-key erc-mode-map (kbd "C-c C-RET") 'erc-send-current-line)

;; Join the #emacs and #erc channels whenever connecting to Freenode.
(setq erc-autojoin-channels-alist
      '(("freenode.net"
	 "#emacs" "#erc" "#postgresql" "##rust" "#rust-embedded"
	 "#python")))

(provide 'init-erc)
;;; init-erc.el ends here