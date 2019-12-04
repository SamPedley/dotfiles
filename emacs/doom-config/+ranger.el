;;;  -*- lexical-binding: t; -*-

(def-package! ranger
  :commands (ranger deer ranger-override-dired-fn)
  :config
  (set-popup-rule! "^\\*ranger" :ignore t))

(setq ranger-show-literal nil
      ranger-show-hidden t)

(map!
 (:leader
   (:prefix "a"
    :desc "Ranger" "r" #'ranger
    :desc "Deer" "d" #'deer)))

(global-set-key (kbd "s--") #'ranger)
(map! "s--" #'ranger)

(add-hook! dired-mode #'ranger-override-dired-fn) ;; Override dired-mode so it uses deer
