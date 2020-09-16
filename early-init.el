;;; early-init.el --- before init.el
;;; Commentary:
;;; Code:

(require 'package)

;; MELPA stable repositlry
;;(eval-when-compile
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; window size
;; (setq default-frame-alist
;;       '((height . 55)
;;  	(width . 180)
;; 	(left . 175)))
;; (setq default-frame-alist
;;       '((left . 175)
;; 	(top . 175)
;; 	(height . 36)
;; 	(width . 163)))
;; (setq default-frame-alist
;;       '((left . 175)))
(setq default-frame-alist
      '((left . 175)
	(top . 175)))

(provide 'early-init)
;;; early-init.el ends here















