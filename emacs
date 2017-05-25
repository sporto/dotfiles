(require 'package) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (modalka))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; https://github.com/mrkkrp/modalka
;; Trigger modalka mode
(global-set-key (kbd "<escape>") #'modalka-mode)
(modalka-global-mode 1)

(modalka-define-kbd "l" "C-f")
(modalka-define-kbd "j" "C-b")
(modalka-define-kbd "k" "C-n")
(modalka-define-kbd "i" "C-p")
