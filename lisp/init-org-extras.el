;;; init-org-extras.el --- configure org-extras -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(eval-when-compile (require 'init-use-package))
(use-package org-mime
  :ensure t
  :defer t
  :config
  (custom-set-variables
   '(org-mime-library 'mml)))

(provide 'init-org-extras)
;;; init-org-extras.el ends here
