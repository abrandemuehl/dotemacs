
(require-package 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)


(when (eq completion-engine 'company)
  (eval-after-load 'company
    '(add-to-list 'company-backends 'company-irony)))

(after 'flycheck (require-package 'flycheck-irony))
