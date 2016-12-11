

(require-package 'systemd)

(setq auto-mode-alist (append '(("\\.ino$" . c-mode))
      auto-mode-alist))

(require-package 'cuda-mode)
(after "rainbow-delimiters"
       (add-hook 'cuda-mode-hook 'rainbow-delimiters-mode))
