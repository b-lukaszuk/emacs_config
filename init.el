;;; package --- Summary:
;;; Commentary:
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;; Code:
(require 'package)
(package-initialize)

;; dodanie wersji https archiwow z modami
;; (domyslnie jest elpa ze zwyklym http)

(add-to-list 'package-archives
             '("gnu" . "https://elpa.gnu.org/packages/") t)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)


;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
  (package-refresh-contents))

(eval-when-compile
  (require 'use-package))

(require 'org)
(org-babel-load-file
  (expand-file-name "./myinit.org"
		    user-emacs-directory))
(setq inhibit-splash-screen t)
(set-frame-font "Monospace 12")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.50")
 '(evil-auto-indent t)
 '(package-selected-packages
   (quote
    (lsp-java exwm highlight-indent-guides seq helm evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
(put 'narrow-to-region 'disabled nil)
;;; init.el ends here
