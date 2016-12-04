(when (eq completion-engine 'company)




  (setq company/ycmd-server-command nil)




  (require-package 'company)
  (require 'company)


  (when (executable-find "tern")
    (after "company-tern-autoloads"
           (add-to-list 'company-backends 'company-tern)))



  (when company/ycmd-server-command
    (setq ycmd-server-command `("python", company/ycmd-server-command))
    (require-package 'ycmd)
    (ycmd-setup)

    (require-package 'company-ycmd)
    (company-ycmd-setup))
  (setq company-minimum-prefix-length 1)
  (add-hook 'after-init-hook 'global-company-mode)
)
