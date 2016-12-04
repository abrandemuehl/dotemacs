(when (eq pair-engine 'emacs)
  (setq show-paren-delay 0)
  (show-paren-mode))

(global-linum-mode 1)
(size-indication-mode t)
(menu-bar-mode -1)

(require-package 'monokai-theme)
(load-theme 'monokai t)

(require-package 'rainbow-delimiters)
(rainbow-delimiters-mode t)


; Prevents specified minor modes from displaying in the modeline
(require-package 'diminish)
(diminish 'visual-line-mode)
(after 'undo-tree (diminish 'undo-tree-mode))
(after 'company (diminish 'company-mode))
(after 'projectile (diminish 'projectile-mode))
(after 'evil-commentary (diminish 'evil-commentary-mode))
(after 'smartparens (diminish 'smartparens-mode))


(require 'powerline)
(setq powerline-default-separator 'alternate)
(setq spaceline-separator-dir-left '(left . left))
(setq spaceline-separator-dir-right '(right . right))
(require-package 'spaceline)
(require 'spaceline-config)
(setq spaceline-highlight-face-func #'spaceline-highlight-face-evil-state)
(spaceline-emacs-theme)
(spaceline-info-mode)
(spaceline-compile)
