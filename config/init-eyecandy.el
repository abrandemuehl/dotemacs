(when (eq pair-engine 'emacs)
  (require 'paren)
  (set-face-background 'show-paren-match "#888")
  (set-face-foreground 'show-paren-match "#fff")
  (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
  (setq show-paren-delay 0)
  (show-paren-mode))

(global-linum-mode 1)
(size-indication-mode t)
(menu-bar-mode -1)

; (require-package 'monokai-theme)
; (load-theme 'monokai t)
; (require-package 'material-theme)
; (load-theme 'material t)
(require-package 'gruvbox-theme)
(load-theme 'gruvbox t)


(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)


; Prevents specified minor modes from displaying in the modeline
(require-package 'diminish)
(diminish 'visual-line-mode)
(after 'undo-tree (diminish 'undo-tree-mode))
(after 'company (diminish 'company-mode))
(after 'projectile (diminish 'projectile-mode))
(after 'evil-commentary (diminish 'evil-commentary-mode))
(after 'smartparens (diminish 'smartparens-mode))
(after 'editorconfig (diminish 'editorconfig-mode))


(require-package 'powerline)

(require 'powerline)
(require-package 'smart-mode-line)
(require 'smart-mode-line)


(setq powerline-default-separator 'curve)
(setq powerline-default-separator-dir '(left . right))
(setq sml/no-confirm-load-theme t)
(setq sml/theme 'powerline)
(sml/setup)
