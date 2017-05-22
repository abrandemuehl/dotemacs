(setq config-directory "~/.emacs.d/config")
(setq eval-expression-debug-on-error t)

(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                           ("org" . "http://orgmode.org/elpa/")
                           ("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
(defun require-package (package)
  "Ensures that PACKAGE is installed."
  (unless (or (package-installed-p package)
              (require package nil 'noerror))
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))



(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)


(setq base-dir "~/.emacs.d/")
(setq cache-dir (concat base-dir "cache/"))
(setq config-dir (concat base-dir "config/"))

(setq completion-engine 'company)
(setq pair-engine 'emacs)
(global-linum-mode 1)

(load (concat config-dir "init-boot.el"))
(cl-loop for file in (directory-files config-directory t)
  when (string-match "\\.el$" file)
  do (load file))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" default)))
 '(package-selected-packages
   (quote
    (evil-magit magit vala-mode haskell-mode smart-mode-line-powerline-theme smart-mode-line powerline-evil cuda-mode systemd spaceline rainbow-delimiters monokai-theme material-theme gruvbox-theme flycheck evil-visualstar evil-surround evil-numbers evil-matchit evil-leader evil-indent-textobject evil-commentary diminish company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
