
;;; esc quits
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))



(after 'evil-leader
   (evil-leader/set-leader "<SPC>")
   (evil-leader/set-key "k" 'windmove-up)
   (evil-leader/set-key "j" 'windmove-down)
   (evil-leader/set-key "h" 'windmove-left)
   (evil-leader/set-key "l" 'windmove-right)
)

(after 'evil
   (define-key evil-normal-state-map (kbd "K") nil)
   (define-key evil-normal-state-map [escape] 'keyboard-quit)
   (define-key evil-visual-state-map [escape] 'keyboard-quit)
   (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
   (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
   (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
   (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
   (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
)
