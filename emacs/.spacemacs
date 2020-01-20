;; -*- mode: emacs-lisp; lexical-binding: t -*-
(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default

   ;; List of configuration layers to load.
    dotspacemacs-configuration-layers '(nginx
                                         csv
                                       go
                                       rust
                                       lsp
                                       sql
                                       yaml
                                       colors
                                       groovy
                                       ;; (colors :variables colors-enable-nyan-cat-progress-bar t)
                                       helm
                                       kubernetes
                                       ;; spacemacs-purpose
                                       ;; spacemacs-navigation
                                       (terraform :variables terraform-auto-format-on-save t)
                                       docker
                                       (ranger :variables
                                               ranger-enter-with-minus t
                                               ranger-override-dired-mode t
                                               ranger-max-preview-size 10
                                               ranger-show-preview t
                                               ranger-show-hidden t)
                                       xkcd
                                       (spell-checking :variables spell-checking-enable-by-default nil)
                                       ( restclient :variables restclient-use-org t)
                                       auto-completion
                                       emacs-lisp
                                       command-log
                                       git
                                       github
                                       copy-as-format
                                       osx
                                       (ibuffer :variables ibuffer-group-buffers-by 'projects)
                                       multiple-cursors
                                       semantic
                                       (org :variables org-projectile-file "~/Dropbox/Notes/inbox.org"
                                            org-want-todo-bindings t
                                            org-enable-org-journal-support t
                                            org-enable-reveal-js-support t
                                            org-enable-github-support t)
                                       shell-scripts
                                       (shell :variables shell-default-term-shell "/usr/local/bin/bash"
                                              shell-default-height 30
                                              shell-default-position 'bottom)
                                       (version-control :variables version-control-diff-tool 'diff-hl
                                                        version-control-diff-side 'left version-control-global-margin t)
                                       ;; editers
                                       import-js
                                       tern
                                       (evil-snipe :variables evil-snipe-enable-alternate-f-and-t-behaviors t)                                       ;; parinfer
                                       ;; Linters
                                       prettier
                                       ;; Languages
                                       ( plantuml :variables plantuml-jar-path "/usr/local/Cellar/plantuml/1.2019.5/libexec/plantuml.jar"
                                                  org-plantuml-jar-path "/usr/local/Cellar/plantuml/1.2019.5/libexec/plantuml.jar" )
                                       themes-megapack
                                       python
                                       vimscript
                                       asciidoc
                                       (clojure :variables
                                        clojure-enable-sayid t
                                        clojure-enable-clj-refactor t)
                                       (json :variables json-fmt-tool 'prettier)
                                       (html :variables web-fmt-tool 'prettier)
                                       markdown
                                       react
                                       emacs-lisp
                                       (javascript :variables javascript-fmt-tool 'prettier
                                         node-add-modules-path t
                                         javascript-repl `nodejs
                                                   javascript-import-tool 'import-js
                                         javascript-fmt-on-save t
                                                   javascript-backend 'lsp))

   dotspacemacs-additional-packages '(doom-themes evil-goggles)
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '(adaptive-wrap)
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 10
   dotspacemacs-enable-emacs-pdumper nil
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"
   dotspacemacs-gc-cons '(100000000 0.1)
   dotspacemacs-use-spacelpa nil
   dotspacemacs-verify-spacelpa-archives nil
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory 'emacs-version
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-initial-scratch-message nil
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-active-transparency 100
   dotspacemacs-inactive-transparency 100
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   ;; '(:disabled-for-modes
   ;;   text-mode
   ;;   :relative t)
   dotspacemacs-folding-method 'evil
   dotspacemacs-zone-out-when-idle nil
   dotspacemacs-startup-banner 100
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 10)
                                (todos . 10))

   dotspacemacs-scratch-mode 'org-mode

   dotspacemacs-themes '(doom-gruvbox
                         gruvbox-dark-hard

                         ;; Others
                         ;; seti
                         ;; naquadah
                         ;; material
                         ;; kaolin-galaxy
                         ;; kaolin-valley-dark
                         ;; dakrone
                         ;; Light Themes
                         leuven
                         flatui

                         ;;
                         ;; Doom Themes : https://github.com/hlissner/emacs-doom-themes
                         ;;
                         doom-vibrant
                         doom-solarized-light
                         doom-peacock
												 doom-molokai
                         ;;
                         ;; General Themes
                         ;;
                         spacemacs-dark
                         spacemacs-light)
   dotspacemacs-mode-line-theme 'doom
   ;; dotspacemacs-mode-line-theme '(all-the-icons :separator none)
   dotspacemacs-default-font '("Source Code Pro"
                               :size 15
                               :weight normal
                               :width normal)
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-auto-generate-layout-names nil
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-switch-to-buffer-prefers-purpose t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup t
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis t
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server nil
   dotspacemacs-server-socket-dir nil
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"
   dotspacemacs-icon-title-format nil
   dotspacemacs-whitespace-cleanup nil
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  (setq-default git-magit-status-fullscreen t))

(defun dotspacemacs/user-load ())



(defun dotspacemacs/user-config ()
  (defun sam/split-right-and-open ()
    (interactive)
    (split-window-right-and-focus)
    (helm-projectile-find-file))

  (defun sam/split-below-and-open ()
    (interactive)
    (split-window-below-and-focus)
    (helm-projectile-find-file))
  ;; -------------------------------
  ;; Hotkeys -----------------------

  (global-set-key (kbd "H-p") 'helm-projectile-find-file)
  (global-set-key (kbd "H--") 'ranger)
  (global-set-key (kbd "H-g") 'magit-status)
  (global-set-key (kbd "H-b") 'ibuffer)

  (global-set-key (kbd "H-h") 'evil-window-left)
  (global-set-key (kbd "H-l") 'evil-window-right)
  (global-set-key (kbd "H-k") 'evil-window-up)
  (global-set-key (kbd "H-j") 'evil-window-down)



  ;; (global-set-key (kbd "H-]" 'spacemacs/t))


  (spacemacs/set-leader-keys "p/" 'helm-projectile-find-file)

  (spacemacs/set-leader-keys "ESC" 'keyboard-quit)
  (spacemacs/set-leader-keys "oc" 'org-capture)
  ;; (spacemacs/set-leader-keys "TAB" 'spacemacs/layouts-transient-state/body)
  (spacemacs/set-leader-keys "SPC" 'helm-projectile-find-file)
  (spacemacs/set-leader-keys "L" 'spacemacs/workspaces-transient-state/body)
  (spacemacs/set-leader-keys "W" 'spacemacs/window-manipulation-transient-state/body)
  (spacemacs/set-leader-keys "o1" 'spacemacs/custom-layouts-transient-state/spacemacs/custom-perspective-@Org-and-exit)
  (spacemacs/set-leader-keys "o2" 'spacemacs/custom-layouts-transient-state/spacemacs/custom-perspective-@Rest-and-exit)
  (spacemacs/set-leader-keys "o9" 'spacemacs/custom-layouts-transient-state/spacemacs/custom-perspective-@Spacemacs-and-exit)
  (spacemacs/set-leader-keys "ov" 'sam/split-right-and-open)
  (spacemacs/set-leader-keys "os" 'sam/split-below-and-open)
  (spacemacs/set-leader-keys-for-major-mode 'org-mode
    "of" 'org-babel-execute-src-block
    "of" 'org-edit-src-code
    "k" 'org-backward-heading-same-level
    "j" 'org-forward-heading-same-level)

  (spacemacs/set-leader-keys "o;" 'cider-pprint-eval-defun-to-comment)
  ;; -------------------------------
  ;; Vim -----------------------
  ;; Pulled from -> https://github.com/vatrat/dotfiles/blob/master/.spacemacs#L542
  (setq evil-move-cursor-back nil)
  (setq evil-move-beyond-eol nil)

  (evil-define-motion evil-last-non-blank (count)
    "Move the cursor to the last non-blank character
on the current line. If COUNT is given, move COUNT - 1
lines downward first."
    :type inclusive
    (evil-end-of-line count)
    (re-search-backward "^\\|[^[:space:]]")
    (setq evil-this-type (if (eolp) 'exclusive 'inclusive)))
  (define-key evil-motion-state-map "g$" 'evil-end-of-line)
  (define-key evil-motion-state-map "$" 'evil-last-non-blank)

  ;; Evil-goggles setup
  ;; (evil-goggles-mode)
  ;; (evil-goggles-use-diff-faces)
  ;; (setq evil-goggles-pulse t)

  ;; -------------------------------
  ;; Clojure -----------------------

  (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hooks)
  ;; (setq clojure-enable-fancify-symbols t)

  ;; -------------------------------
  ;; Visual  -----------------------

  (global-visual-line-mode 1)
  (setq doom-modeline-height 10)
  (setq diff-hl-flydiff-mode t)
  (setq doom-modeline-buffer-file-name-style 'file-name)
  (setq doom-modeline-buffer-encoding nil)

  (setq js2-strict-missing-semi-warning nil)
  ;; (setq js2-mode-show-parse-errors nil)
  ;; (setq js2-mode-show-strict-warnings nil)
  ;; js2-toggle-warnings-and-errors


  (spacemacs/toggle-vi-tilde-fringe-off)

  (setq ns-use-proxy-icon nil)
  (setq frame-title-format nil)
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))
  ;; -------------------------------
  ;; Org Mode
  ;; -------------------------------
  (setq ranger-show-literal nil) ;; preview with syntax highlighting - toggle with "zi" in ranger mode
  (setq magit-repository-directories '("~/Projects"))

  (setq projectile-project-search-path '("~/Projects/"))

  ;; (setq evil-default-cursor (quote (t "#750000"))
  ;;       evil-visual-state-cursor '("#63ba3c" bar)
  ;;       evil-normal-state-cursor '("#FFFFFF" bar)
  ;;       evil-insert-state-cursor '("#e2e222" bar))

  ;;
  ;; org mode config
  ;;
  (setq org-journal-dir "~/Dropbox/Notes/journal/")
  (setq org-startup-indented t)
  (setq org-agenda-files (quote ("~/Dropbox/Notes")))
  ;; auto save agenda
  (add-hook 'org-agenda-mode-hook
            (lambda ()
              (add-hook 'auto-save-hook 'org-save-all-org-buffers
                        nil t)
              (auto-save-mode)))
  (setq org-todo-keywords
        (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
                (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

  (setq org-todo-keyword-faces
        (quote (("TODO" :foreground "red" :weight bold)
                ("NEXT" :foreground "blue" :weight bold)
                ("DONE" :foreground "forest green" :weight bold)
                ("WAITING" :foreground "orange" :weight bold)
                ("HOLD" :foreground "magenta" :weight bold)
                ("CANCELLED" :foreground "forest green" :weight bold)
                ("MEETING" :foreground "forest green" :weight bold)
                ("PHONE" :foreground "forest green" :weight bold))))

  ;; org-capture
  (setq org-directory "~/Dropbox/Notes")
  (setq org-default-notes-file "~/Dropbox/Notes/inbox.org")
  (setq org-default-work-notes-file "~/Dropbox/Notes/work.org")
  (setq org-capture-templates (quote (("t" "todo"
                                       entry
                                       (file "~/Dropbox/Notes/inbox.org")
                                       "* TODO %?\n%T\n"
                                       :clock-in t
                                       :clock-resume t)
                                      ("r" "respond"
                                       entry
                                       (file org-default-notes-file)
                                       "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n"
                                       :clock-in t
                                       :clock-resume t
                                       :immediate-finish t)
                                      ("n" "note"
                                       entry
                                       (file org-default-notes-file)
                                       "* %? :NOTE:\n%T\n"
                                       :clock-in t
                                       :clock-resume t)
                                      ("m" "Meeting"
                                       entry
                                       (file org-default-work-notes-file)
                                       "* MEETING with %? :MEETING:\n%T"
                                       :clock-in t
                                       :clock-resume t))))

  (spacemacs|define-custom-layout "@Rest"
    :binding "r"
    :body
    (find-file "~/Dropbox/Rest/endpoints.http")))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-mode t)
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#56697A")
 '(jdee-db-active-breakpoint-face-colors (cons "#10151C" "#5EC4FF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#10151C" "#8BD49C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#10151C" "#384551"))
 '(package-selected-packages
   (quote
    (nginx-mode dap-mode bui tree-mode ansi package-build shut-up epl git commander f dash s inflections edn peg groovy-mode groovy-imports lsp-ui lsp-treemacs lsp-python-ms python helm-lsp company-lsp lsp-mode evil-snipe rainbow-mode rainbow-identifiers color-identifiers-mode csv-mode ranger helm-pass auth-source-pass password-store dockerfile-mode docker tablist docker-tramp helm-gtags godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc ggtags flycheck-gometalinter flycheck-golangci-lint counsel-gtags company-go go-mode yapfify pytest pyenv-mode py-isort plantuml-mode pippel pipenv pyvenv pip-requirements live-py-mode importmagic epc ctable concurrent deferred helm-pydoc cython-mode company-anaconda anaconda-mode pythonic adoc-mode markup-faces command-log-mode yatemplate copy-as-format org-journal insert-shebang flycheck-bashate fish-mode company-shell yaml-mode flycheck treemacs-projectile treemacs-evil treemacs ht pfuture yasnippet-snippets xterm-color ws-butler writeroom-mode winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit symon string-inflection stickyfunc-enhance srefactor spaceline-all-the-icons smeargle slim-mode shell-pop scss-mode sayid sass-mode rjsx-mode reveal-in-osx-finder restclient-helm restart-emacs rainbow-delimiters pug-mode prettier-js popwin persp-mode pcre2el password-generator parinfer paradox ox-reveal ox-gfm overseer osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro org-mime org-download org-bullets org-brain open-junk-file ob-restclient ob-http neotree nameless multi-term move-text mmm-mode markdown-toc magit-svn magit-gitflow macrostep lorem-ipsum livid-mode link-hint launchctl json-navigator json-mode js2-refactor js-doc indent-guide impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag gruvbox-theme google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flyspell-correct-helm flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline diminish diff-hl counsel-projectile company-web company-tern company-statistics company-restclient column-enforce-mode clojure-snippets clj-refactor clean-aindent-mode cider-eval-sexp-fu centered-cursor-mode browse-at-remote auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(vc-annotate-background "#1D252C")
 '(vc-annotate-color-map
   (list
    (cons 20 "#8BD49C")
    (cons 40 "#abcd93")
    (cons 60 "#cbc68b")
    (cons 80 "#EBBF83")
    (cons 100 "#e5ae6f")
    (cons 120 "#df9e5b")
    (cons 140 "#D98E48")
    (cons 160 "#dc885f")
    (cons 180 "#df8376")
    (cons 200 "#E27E8D")
    (cons 220 "#df7080")
    (cons 240 "#dc6274")
    (cons 260 "#D95468")
    (cons 280 "#b05062")
    (cons 300 "#884c5c")
    (cons 320 "#604856")
    (cons 340 "#56697A")
    (cons 360 "#56697A")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-bar ((t (:inherit highlight)))))
)
