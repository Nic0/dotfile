(add-to-list 'load-path "~/.emacs.d/")
(load-library "shortcuts")
(load-library "outline-shortcuts")

;; Color theme
(require 'color-theme)
(color-theme-initialize)
;(color-theme-clarity)
; was clarity

  ;; Affichage de parentaise correspondante
(require 'paren)
(show-paren-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(inhibit-startup-screen t)
 '(mouse-wheel-mode t nil (mwheel))
 '(python-python-command "python2"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Ask y/n instead yes/no
(fset 'yes-or-no-p 'y-or-n-p)
(set-language-environment "UTF-8")
;; no leaving msg
(setq inhibit-startup-message t)


;; display column in status bar
(setq column-number-mode t)

;;affiche les espaces inutile
;;(setq-default show-trailing-whitespace t)

;;Indentation
(setq tab-width 4
      c-default-style "k&r"
      c-block-comment-prefix ""
      c-basic-offset 4)
(setq truncate-lines t)
;; no tabs

;(setq-default indent-tabs-mode nil)

;; Display 24 Hours Time
(display-time)
(setq display-time-24hr-format t)

;; no menu-bar
;(menu-bar-mode nil)
;(put 'scroll-left 'disabled nil)

;(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
;(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode)) auto-mode-alist))

;; Markdown coloration
;(autoload 'markdown-mode "markdown-mode.el"
;   "Major mode for editing Markdown files" t)
;(setq auto-mode-alist
;   (cons '("\.md" . markdown-mode) auto-mode-alist))

;; Lua
;(setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
;(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

;; PYTHON
(setq py-shell-name "python2.7")

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
;(setq ipython-command "/usr/bin/ipython2")
;(require 'ipython)

;; Auto-complete
(add-to-list 'load-path "/usr/share/emacs/site-lisp/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/usr/share/emacs/site-lisp/auto-complete/ac-dict")
(ac-config-default)

;;
;; FOLDING
;;
;; hideshow for programming
;; an easy to use folding function
;;(require 'foldout)
;;(load-library "hideshow")

(add-hook 'python-mode-hook 'outline-minor-mode)
;;(add-hook 'php-mode-hook 'hs-minor-mode)
;;(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;; Hide the comments too when you do a 'hs-hide-all'
;;(setq hs-hide-comments nil)
;; Advice from maintener, seem have some problem with vc and ediff
;;(add-hook 'ediff-prepare-buffer-hook 'turn-off-hideshow)
;;(add-hook 'vc-before-checkin-hook 'turn-off-hideshow)


;; ECB
;;In order to actually use ecb you have to follow some more steps:
;;1. Add the new ECB-directory to your emacs load-path variable.
;;For example you may add this line into your ~/.emacs file:
(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")

;;2. To load ecb at startup:
(require 'ecb)
;;- or -
;;To load ecb first after starting it by ecb-activate:
;(require 'ecb-autoloads)

;; asciidoc
;(autoload 'doc-mode "doc-mode" "AsciiDoc editing mode." t)
;(add-to-list 'auto-mode-alist '("\\.doc$" . doc-mode))

;; YASnippet
(add-to-list 'load-path "/usr/share/emacs/site-lisp/yas")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "/usr/share/emacs/site-lisp/yas/snippets")

; Keywords
; TODO:
;(font-lock-add-keywords nil '(("\\<\\(TODO\\):" 1 font-lock-warning-face t)))
; (), {}, []
;(font-lock-add-keywords 'python-mode
; '(("\\<\\(TODO\\):" 1 font-lock-warning-face prepend)
;   ("\\(\(\\|\)\\|\{\\|\}\\|\\[\\|\\]\\)" . font-lock-preprocessor-face)
;   ("\\(1\\|2\\|3\\|4\\|5\\|6\\|7\\|8\\|9\\|0\\)" . font-lock-function-name-face)))

;; USENET
;(setq gnus-select-method '(nntp "news.readfreenews.net"))


;(autoload 'python-mode "python-mode.el" "Python mode." t)
;(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))



;; Faster point movement
;(global-set-key "\M-\C-p"
;                '(lambda () (interactive) (previous-line 5)))
;
;(global-set-key "\M-\C-n"
;                '(lambda () (interactive) (next-line 5)))


;(when (load "flymake" t)
;  (defun flymake-pylint-init ()
;    (let* ((temp-file (flymake-init-create-temp-buffer-copy;
;		       'flymake-create-temp-inplace));
;	   (local-file (file-relative-name
;			temp-file
;			(file-name-directory buffer-file-name))))
;     (list "epylint" (list local-file))))
;
;  (add-to-list 'flymake-allowed-file-name-masks
;	                      '("\\.py\\'" flymake-pylint-init)))
