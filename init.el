;; init.el -- Initialization configuration for emacs

;; Initialize package sources
(require 'package)
(setq package-check-signature nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")			
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Configure use-package
(eval-when-compile
  (require 'use-package)
  (setq use-package-always-ensure t))

;; Move custom generated code to another file
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;; Face customization
(setq inhibit-startup-screen t)  ;; Starting Emacs in peace

;; Emacs appearance
(scroll-bar-mode -1)             ;; Hide scroll-bar
(tool-bar-mode -1)               ;; Hide tool-bar
(menu-bar-mode -1)               ;; Hide menu-bar

;; Load catppuccin theme
(use-package catppuccin-theme)
(load-theme 'catppuccin :no-confirm)

;; No backup files
(setq make-backup-files nil)

;; Run the command below while loading this config on a new machine
;; M-x all-the-icons-install-fonts
;; (use-package all-the-icons)

;; Run the command below while loading this config on a new machine
;; M-x nerd-icons-install-fonts
(use-package nerd-icons)

;; (use-package doom-modeline
;;   :ensure t
;;   :init (doom-modeline-mode 1)
;;   :custom ((doom-modeline-env-version nil)
;; 	   (doom-modeline-github t)))

;; (use-package doom-modeline
;;   :config
;;   (doom-modeline-mode))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-github t)))

;; Load AUCTeX
;; (use-package auctex)

;; Org-mode stuff

;; Programming and coding functions

;; Mail management

;; Miscellaneous stuff
