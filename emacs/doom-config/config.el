;;; doom-config/config.el -*- lexical-binding: t; -*-

(add-to-list 'default-frame-alist
             '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist
             '(ns-appearance . dark))
;; (setq doom-theme 'gruvbox-dark-hard)
;; UI Settings
(setq
 ;; Themes to try:
 ;; doom-gruvbox - doom-challenger-deep - doom-Iosvkem - doom-snazzy
 doom-theme 'doom-gruvbox
 doom-font (font-spec :family "Source Code Pro" :size 14)
 doom-big-font (font-spec :family "Source Code Pro" :size 18))

(add-hook!
  js2-mode 'prettier-js-mode
  (add-hook 'before-save-hook #'refmt-before-save nil t))

(setq
 projectile-project-search-path '("~/Projects/"))

(setq org-directory "~/Dropbox/Notes")

(setq display-line-numbers-type nil)

(global-visual-line-mode 1)

;; (global-set-key (kbd "s--") #'ranger)
;; (map! "s--" #'ranger)
;;
;;
(global-set-key (kbd "s--") #'deer)
(map! "s--" #'deer)

;; (add-hook! dired-mode #'ranger-override-dired-fn) ;; Override dired-mode so it uses deer

(setq ranger-parent-depth 1)


(global-set-key (kbd "s-b") #'ibuffer)
(map! "s-b" #'ibuffer)

;; Modules
;; (load! "+ranger")  ;; File manager stuff. Should replace with (dired +ranger)



;; (after! org
;;   (set-face-attribute 'org-checkbox-statistics-done nil
;;                       :foreground "#ffffff"
;;                       :background nil
;;                       :weight 'bold)
;; (set-face-attribute 'org-checkbox nil
;;                       :foreground "#ff0000"
;;                       :background nil)
;; )

;; (global-set-key (kbd "H-p") 'helm-projectile-find-file)
;; (global-set-key (kbd "H--") 'ranger)
;; (global-set-key (kbd "H-g") 'magit-status)
;; (global-set-key (kbd "H-b") 'ibuffer)

(global-set-key (kbd "s-h") #'evil-window-left)
  (global-set-key (kbd "s-l") #'evil-window-right)
  (global-set-key (kbd "s-k") #'evil-window-up)
  (global-set-key (kbd "s-j") #'evil-window-down)

(map! (:leader
          (:map (clojure-mode-map clojurescript-mode-map)
            ;; ";" #'cider-pprint-eval-defun-at-point
            (:prefix ("e" . "Clojure eval")
              :desc  "jack in CLJS" "\"" #'cider-jack-in-cljs
              :desc  "jack in CLJ" "'" #'cider-jack-in-clj
              :desc "eval buffer" "b" #'cider-eval-buffer
              :desc "eval at point" "e" #'cider-eval-defun-at-point
              :desc "eval to pprint" "p" #'cider-pprint-eval-defun-at-point
              :desc "eval to comment" ";" #'cider-pprint-eval-defun-to-comment
              ;; "e" #'cider-pprint-eval-defun-to-
              ))))
