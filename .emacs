;; Color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-blackboard)
; was clarity

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
(global-set-key [S-f4] 'hs-hide-level)
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
;;(menu-bar-mode nil)
(put 'scroll-left 'disabled nil)

(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode)) auto-mode-alist))

;; Markdown coloration
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\.md" . markdown-mode) auto-mode-alist))

;; Lua
(setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

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
;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")

;;2. To load ecb at startup:
;;(require 'ecb)
;;- or -
;;To load ecb first after starting it by ecb-activate:
;;(require 'ecb-autoloads)

;; asciidoc
(autoload 'doc-mode "doc-mode" "AsciiDoc editing mode." t)
(add-to-list 'auto-mode-alist '("\\.doc$" . doc-mode))

;; YASnippet
(add-to-list 'load-path "/usr/share/emacs/site-lisp/yas")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "/usr/share/emacs/site-lisp/yas/snippets")

; Keywords
; TODO:
(font-lock-add-keywords nil '(("\\<\\(TODO\\):" 1 font-lock-warning-face t)))
; (), {}, []
(font-lock-add-keywords 'python-mode
 '(("\\<\\(TODO\\):" 1 font-lock-warning-face prepend)
   ("\\(\(\\|\)\\|\{\\|\}\\|\\[\\|\\]\\)" . font-lock-preprocessor-face)
   ("\\(1\\|2\\|3\\|4\\|5\\|6\\|7\\|8\\|9\\|0\\)" . font-lock-function-name-face)))

;; USENET
(setq gnus-select-method '(nntp "news.readfreenews.net"))


; Outline-minor-mode key map
(define-prefix-command 'cm-map nil "Outline-")
; HIDE
(define-key cm-map "q" 'hide-sublevels)    ; Hide everything but the top-level headings
(define-key cm-map "t" 'hide-body)         ; Hide everything but headings (all body lines)
(define-key cm-map "o" 'hide-other)        ; Hide other branches
(define-key cm-map "c" 'hide-entry)        ; Hide this entry's body
(define-key cm-map "l" 'hide-leaves)       ; Hide body lines in this entry and sub-entries
(define-key cm-map "d" 'hide-subtree)      ; Hide everything in this entry and sub-entries
; SHOW
(define-key cm-map "a" 'show-all)          ; Show (expand) everything
(define-key cm-map "e" 'show-entry)        ; Show this heading's body
(define-key cm-map "i" 'show-children)     ; Show this heading's immediate child sub-headings
(define-key cm-map "k" 'show-branches)     ; Show all sub-headings under this heading
(define-key cm-map "s" 'show-subtree)      ; Show (expand) everything in this heading & below
; MOVE
(define-key cm-map "u" 'outline-up-heading)                ; Up
(define-key cm-map "n" 'outline-next-visible-heading)      ; Next
(define-key cm-map "p" 'outline-previous-visible-heading)  ; Previous
(define-key cm-map "f" 'outline-forward-same-level)        ; Forward - same level
(define-key cm-map "b" 'outline-backward-same-level)       ; Backward - same level
(global-set-key "\M-o" cm-map)