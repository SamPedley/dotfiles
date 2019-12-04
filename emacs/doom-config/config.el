;;; doom-config/config.el -*- lexical-binding: t; -*-

(add-to-list 'default-frame-alist
             '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist
             '(ns-appearance . dark))

;; UI Settings
(setq
 ;; Themes to try:
 ;; doom-gruvbox - doom-challenger-deep - doom-Iosvkem - doom-snazzy
 doom-theme 'doom-snazzy
 doom-font (font-spec :family "Source Code Pro" :size 14)
 doom-big-font (font-spec :family "Source Code Pro" :size 18))

(setq
 projectile-project-search-path '("~/Projects/")
)

(setq org-directory "~/Dropbox/Notes")

(setq display-line-numbers-type nil)

(global-visual-line-mode 1)


;; Modules
(load! "+ranger")  ;; File manager stuff. Should replace with (dired +ranger)



  ;; (global-set-key (kbd "H-p") 'helm-projectile-find-file)
  ;; (global-set-key (kbd "H--") 'ranger)
  ;; (global-set-key (kbd "H-g") 'magit-status)
  ;; (global-set-key (kbd "H-b") 'ibuffer)

  (global-set-key (kbd "s-h") #'evil-window-left)
  (global-set-key (kbd "s-l") #'evil-window-right)
  (global-set-key (kbd "s-k") #'evil-window-up)
  (global-set-key (kbd "s-j") #'evil-window-down)
