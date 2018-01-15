;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

;; Define package repositories
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(defvar myPackages
  '())

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

;; hide the startup message
(setq inhibit-startup-message t)
;; enable line numbers globally
(global-linum-mode 1)
;; disable the menu bar
(menu-bar-mode -1)
;; disable the toolbar
(tool-bar-mode -1)
;; disable the scrollbar
(scroll-bar-mode -1)
;; highlight matching pairs of parentheses and other characters
(show-paren-mode 1)
;; insert matching delimiters
(electric-pair-mode 1)
;; init.el ends here 
