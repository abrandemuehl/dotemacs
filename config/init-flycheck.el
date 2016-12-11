(require-package 'flycheck)


(setq flycheck-check-syntax-automatically '(save mode-enabled idle-change new-line))
(setq flycheck-indication-mode 'right-fringe)
(setq flycheck-standard-error-navigation nil)
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc html-tidy))

(add-hook 'after-init-hook #'global-flycheck-mode)

