(setq server-auth-dir (concat cache-dir "server"))
(require 'server)
(unless (server-running-p)
  (server-start))


(save-place-mode 1)

(setq scroll-step 1)

(setq tab-width 4)


; Autosave to folder
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
