;; init.el --- Emacs configuration

;; BASIC CUSTOMIZATION
;; --------------------------------------

;; hide the startup message
(setq inhibit-startup-message t)

;; disable the menu-bar, tool-bar and scroll-bar 
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; highlight matching pairs of parentheses and other characters
(show-paren-mode 1)

;; enable line numbers globally
(global-linum-mode 1)

;; insert matching delimiters
(electric-pair-mode 1)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)


;; init.el ends here 

