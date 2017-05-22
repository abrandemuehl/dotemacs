(setq evil-search-module 'evil-search)


(add-hook 'evil-jumps-post-jump-hook #'recenter)


(require-package 'evil-leader)
(require 'evil-leader)
(global-evil-leader-mode)

(require-package 'evil)
(require 'evil)
(evil-mode)



(require-package 'evil-surround)
(global-evil-surround-mode t)


(require-package 'evil-commentary) (evil-commentary-mode t) 

(require-package 'evil-matchit)
(defun evilmi-customize-keybinding ()
  (evil-define-key 'normal evil-matchit-mode-map
    "%" 'evilmi-jump-items))
(global-evil-matchit-mode t)


(require-package 'evil-indent-textobject)
(require 'evil-indent-textobject)


(require-package 'evil-visualstar)
(global-evil-visualstar-mode t)

(require-package 'evil-numbers)

; (setq x-select-enable-clipboard t)
; (setq save-interprogram-paste-before-kill t)

; (setq x-select-enable-clipboard nil)
