(setq config-directory "~/.emacs.d/config")

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
    ("eb0a314ac9f75a2bf6ed53563b5d28b563eeba938f8433f6d1db781a47da1366" "d606ac41cdd7054841941455c0151c54f8bff7e4e050255dbd4ae4d60ab640c1" default)))
 '(package-selected-packages
   (quote
    (## buffer- foggy-night-theme spaceline diminish xclip web-mode smartparens ruby-end relative-line-numbers rake rainbow-delimiters projectile powerline-evil neotree monokai-theme majapahit-theme indent-guide gruvbox-theme grizzl flymake-sass flymake-ruby flymake-less flymake-json flymake-jshint flymake-csslint flymake-css flycheck-ycmd evil-visualstar evil-textobj-column evil-tabs evil-surround evil-search-highlight-persist evil-quickscope evil-numbers evil-nerd-commenter evil-matchit evil-mark-replace evil-leader evil-indent-textobject evil-god-state evil-commentary evil-args company-ycmd company-web company-tern company-shell company-jedi company-go company-ghc company-arduino color-theme-sanityinc-tomorrow buffer-move autopair ac-slime ac-python ac-inf-ruby ac-html-bootstrap ac-clang))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
