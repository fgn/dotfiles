(blink-cursor-mode 0)
(require 'iso-transl)

;; Non-nil means `display-buffer' should reuse frames. 
;; If the buffer in question is already displayed in a frame, raise that frame.
(setq-default display-buffer-reuse-frames t)


;;(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20140106.1009/")
;;(require 'yasnippet) ;; not yasnippet-bundle
;;(yas-global-mode 1)

(add-to-list 'load-path "~/.emacs.d/cc-mode-5.32.5/")

;(add-to-list 'load-path' "~/.emacs.d/emacs-color-theme-solarized/")
;(load-theme 'solarized-dark' t)

;(when (>= emacs-major-version 24)
;  (require 'package)
;  (package-initialize)
;  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;  )


;; (require 'multiple-cursors)
;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; (global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

(load "~/.emacs.d/key-chord.el")
(require 'key-chord)
(key-chord-mode 1)
;(key-chord-define-global "hj"     'undo)
(key-chord-define-global ",."     "<>\C-b")
(key-chord-define-global "qw" 'backward-kill-word)

(tool-bar-mode -1) 

(global-auto-revert-mode 1)


(global-font-lock-mode 1)
(show-paren-mode 1)
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)
(setq-default c-basic-offset 8)

(normal-erase-is-backspace-mode 1)


(defun my-c-mode-common-hook ()
  (linum-mode 1))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)


(defun select-next-window ()
  "Switch to the next window" 
  (interactive)
  (select-window (next-window)))

(defun select-previous-window ()
  "Switch to the previous window" 
  (interactive)
  (select-window (previous-window)))

(global-set-key (kbd "M-<right>") 'select-next-window)
(global-set-key (kbd "M-<left>")  'select-previous-window)

(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f3>") 'start-kbd-macro)
(global-set-key (kbd "<f4>") 'kmacro-end-or-call-macro)


;;
;; ace jump mode major function
;; 
(add-to-list 'load-path "~/.emacs.d/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(key-chord-define-global "lö" 'ace-jump-mode)


;; 
;; enable a more powerful jump back function from ace jump mode
;;
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

(setq-default truncate-lines t)

(add-to-list 'load-path "~/.emacs.d/elpa/expand-region-20140127.112/")
(require 'expand-region)
(key-chord-define-global "öä" 'er/expand-region)



;; Set starup file
;;(custom-set-variables '(initial-buffer-choice "~/startup.org"))


;; Window numbers


(load "~/.emacs.d/window-number.el")
(require 'window-number)
(window-number-mode 1)
(window-number-meta-mode 1)

;;(add-to-list 'load-path "/home/fredrik/.emacs.d/elpa/color-theme-20080305.34/")
;;(require 'color-theme)







