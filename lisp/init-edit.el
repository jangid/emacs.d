;;; init-edit.el --- editing helpers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
;; (setq mac-right-option-modifier nil)
;; (setq mac-right-command-modifier nil)

(add-hook 'after-init-hook 'show-paren-mode)

(provide 'init-edit)
;;; init-edit.el ends here
