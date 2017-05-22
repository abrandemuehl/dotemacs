

(require-package 'systemd)

(setq auto-mode-alist (append '(("\\.ino$" . c-mode))
      auto-mode-alist))

(require-package 'cuda-mode)
(after "rainbow-delimiters"
       (add-hook 'cuda-mode-hook 'rainbow-delimiters-mode))


(setq c-default-style "stroustrup"
      c-basic-offset 2)


(require-package 'cmake-mode)
(require-package 'cmake-font-lock)
(setq auto-mode-alist (append '(("CMakeLists\\.txt\\'" . cmake-mode))
			      '(("\\.cmake\\'" . cmake-mode))
			      auto-mode-alist))

(add-to-list 'auto-mode-alist '("BUILD\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(add-to-list 'auto-mode-alist '("\\.bashrc.*\\'" . sh-mode))

; Disable indenting namespaces
(c-set-offset 'innamespace 0)
(defconst my-cc-style
  '("cc-mode"
    (c-offsets-alist . ((innamespace . [0])))))

(c-add-style "my-cc-mode" my-cc-style)
