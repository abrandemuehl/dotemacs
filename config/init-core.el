(setq server-auth-dir (concat cache-dir "server"))
(require 'server)
(unless (server-running-p)
  (server-start))


(save-place-mode 1)

(setq scroll-step 1)
(setq scroll-conservatively  10000)

(setq tab-width 4)



(when (eq pair-engine 'emacs)
  (electric-pair-mode t)
  (add-hook 'minibuffer-setup-hook (lambda () (electric-pair-mode -1)))
  (add-hook 'minibuffer-exit-hook (lambda () (electric-pair-mode t))))


; Autosave to folder
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
