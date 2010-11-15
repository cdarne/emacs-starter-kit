;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;

(setq dotfiles-dir (file-name-directory (or load-file-name (buffer-file-name))))

(add-to-list 'load-path (expand-file-name
                         "lisp" (expand-file-name
                                 "org" (expand-file-name
                                        "src" dotfiles-dir))))
;; Load up Org Mode and Babel
(require 'org-install)

;; load up the main file
(org-babel-load-file (expand-file-name "starter-kit.org" dotfiles-dir))

;;; init.el ends here

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(mumamo-margin-info-global-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "grey14"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "grey16"))))
 '(mumamo-background-chunk-submode2 ((((class color) (min-colors 88) (background dark)) (:background "grey18"))))
 '(mumamo-background-chunk-submode3 ((((class color) (min-colors 88) (background dark)) (:background "grey20"))))
 '(mumamo-background-chunk-submode4 ((((class color) (min-colors 88) (background dark)) (:background "grey22")))))
