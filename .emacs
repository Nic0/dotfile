;; Color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

  ;; Affichage de parentaise correspondante
(require 'paren)
(show-paren-mode)

;; no leaving msg
(setq inhibit-startup-message t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(mouse-wheel-mode t nil (mwheel))
)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Ask y/n instead yes/no
(fset 'yes-or-no-p 'y-or-n-p)
(set-language-environment "UTF-8")

(global-set-key [f1] 'split-window-horizontally)
(global-set-key [f2] 'other-window)
(global-set-key [f3] 'delete-other-windows)
(global-set-key [f4] 'hs-toggle-hiding)
(global-set-key [f5] 'comment-region)
(global-set-key [S-f5] 'uncoment-region)
(global-set-key [f8] 'delete-trailing-whitespace)
(global-set-key [f12] 'global-linum-mode)

(global-set-key [C-right]  'enlarge-window-horizontally)
(global-set-key [C-left]  'shrink-window-horizontally)
(global-set-key [C-up]  'shrink-window)
(global-set-key [C-down]  'enlarge-window)
(global-set-key [S-right]  'windmove-right)
(global-set-key [S-left]  'windmove-left)
;; display column in status bar
(setq column-number-mode t)

;;affiche les espaces inutile
(setq-default show-trailing-whitespace t)

;; indentation automatique sur nouvelle ligne
(setq-default show-trailing-whitespace t)

;;Indentation
(setq tab-width 4
      c-default-style "k&r"
      c-block-comment-prefix ""
      c-basic-offset 4)
(setq truncate-lines t)
;; no tabs
(setq-default indent-tabs-mode nil)
;; Display 24 Hours Time
(display-time)
(setq display-time-24hr-format t)

;; no menu-bar
(menu-bar-mode nil)
(put 'scroll-left 'disabled nil)

(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode)) auto-mode-alist))

(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

;; Markdown coloration
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\.md" . markdown-mode) auto-mode-alist))

;;
;; FOLDING
;;
;; hideshow for programming
;; an easy to use folding function
(load-library "hideshow")
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;; Hide the comments too when you do a 'hs-hide-all'
(setq hs-hide-comments nil)
;; Advice from maintener, seem have some problem with vc and ediff
(add-hook 'ediff-prepare-buffer-hook 'turn-off-hideshow)
(add-hook 'vc-before-checkin-hook 'turn-off-hideshow)
