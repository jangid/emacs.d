;;; init-direnv.el --- direnv configuration
;;; Commentary:
;;; Code:

(require 'init-use-package)
(use-package direnv
  :ensure t
  :config
  (direnv-mode +1))

(provide 'init-direnv)
;;; init-direnv.el ends here
