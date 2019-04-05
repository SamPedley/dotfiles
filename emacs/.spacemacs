;; -*- mode: emacs-lisp; lexical-binding: t -*-
(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default

    ;; List of configuration layers to load.
    dotspacemacs-configuration-layers '(yaml
                                         helm
                                         xkcd
                                         (spell-checking :variables spell-checking-enable-by-default nil)
                                         ( restclient :variables restclient-use-org t)
                                         auto-completion
                                         emacs-lisp
                                         command-log
                                         git
                                         github
                                         ( templates :variables templates-private-directory "~/.templates/" )
                                         copy-as-format
                                         osx
                                         (ibuffer :variables ibuffer-group-buffers-by 'projects)
                                         multiple-cursors
                                         semantic
                                         ;; ( neotree :variables neo-theme 'icons )
                                         (treemacs :variables   treemacs-use-filewatch-mode t treemacs-use-follow-mode t)
                                         (org :variables org-projectile-file "~/Dropbox/Notes/inbox.org"
                                           org-want-todo-bindings t
                                           org-enable-org-journal-support t
                                           org-enable-reveal-js-support t
                                           org-enable-github-support t)
                                         shell-scripts
                                         (shell :variables shell-default-term-shell "/usr/local/bin/bash"
                                           shell-default-height 30
                                           shell-default-position 'bottom)
                                         (version-control :variables version-control-diff-tool'git-gutter+
                                           version-control-diff-side 'left version-control-global-margin t)
                                         ;; editers
                                         tern
                                         parinfer
                                         ;; Linters
                                         prettier
                                         ;; Languages
                                         ( plantuml :variables plantuml-jar-path "/usr/local/Cellar/plantuml/1.2019.3/libexec/plantuml.jar"
                                           org-plantuml-jar-path "/usr/local/Cellar/plantuml/1.2019.3/libexec/plantuml.jar" )
                                         python
                                         asciidoc
                                         (clojure :variables clojure-enable-sayid
                                           t clojure-enable-clj-refactor t)
                                         (json :variables json-fmt-tool 'prettier)
                                         html
                                         markdown
                                         react
                                         emacs-lisp
                                         (javascript :variables javascript-fmt-tool 'prettier ))

    ;; List of additional packages that will be installed without being
    ;; wrapped in a layer. If you need some configuration for these
    ;; packages, then consider creating a layer. You can also put the
    ;; configuration in `dotspacemacs/user-config'.
    ;; To use a local version of a package, use the `:location' property:
    ;; '(your-package :location "~/path/to/your-package/")
    ;; Also include the dependencies as they will not be resolved automatically.
    dotspacemacs-additional-packages '(doom-themes)

    ;; A list of packages that cannot be updated.
    dotspacemacs-frozen-packages '()

    ;; A list of packages that will not be installed and loaded.
    dotspacemacs-excluded-packages '(adaptive-wrap)

    ;; Defines the behaviour of Spacemacs when installing packages.
    ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
    ;; `used-only' installs only explicitly used packages and deletes any unused
    ;; packages as well as their unused dependencies. `used-but-keep-unused'
    ;; installs only the used packages but won't delete unused ones. `all'
    ;; installs *all* packages supported by Spacemacs and never uninstalls them.
    ;; (default is `used-only')
    dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
    ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
    ;; possible. Set it to nil if you have no way to use HTTPS in your
    ;; environment, otherwise it is strongly recommended to let it set to t.
    ;; This variable has no effect if Emacs is launched with the parameter
    ;; `--insecure' which forces the value of this variable to nil.
    ;; (default t)
    dotspacemacs-elpa-https t

    ;; Maximum allowed time in seconds to contact an ELPA repository.
    ;; (default 5)
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
    dotspacemacs-active-transparency 90
    dotspacemacs-inactive-transparency 90
    dotspacemacs-show-transient-state-title t
    dotspacemacs-show-transient-state-color-guide t
    dotspacemacs-mode-line-unicode-symbols t
    dotspacemacs-smooth-scrolling t
    dotspacemacs-line-numbers nil
    dotspacemacs-folding-method 'evil
    dotspacemacs-zone-out-when-idle nil

    ;; Specify the startup banner. Default value is `official', it displays
    ;; the official spacemacs logo. An integer value is the index of text
    ;; banner, `random' chooses a random text banner in `core/banners'
    ;; directory. A string value must be a path to an image format supported
    ;; by your Emacs build.
    ;; If the value is nil then no banner is displayed. (default 'official)
    dotspacemacs-startup-banner 0

    ;; List of items to show in startup buffer or an association list of
    ;; the form `(list-type . list-size)`. If nil then it is disabled.
    ;; Possible values for list-type are:
    ;; `recents' `bookmarks' `projects' `agenda' `todos'.
    ;; List sizes may be nil, in which case
    ;; `spacemacs-buffer-startup-lists-length' takes effect.
    dotspacemacs-startup-lists '((recents . 5)
                                  (projects . 15))

    ;; Default major mode of the scratch buffer (default `text-mode')
    dotspacemacs-scratch-mode 'org-mode

    dotspacemacs-themes '(gruvbox-dark-hard
                           ;;
                           ;; Doom Themes : https://github.com/hlissner/emacs-doom-themes
                           ;;
                           doom-vibrant
                           doom-molokai
                           doom-one
                           doom-one-light
                           doom-city-lights
                           doom-dracula
                           ;;doom-Iosvkem
                           doom-molokai
                           doom-nord
                           doom-nord-light
                           doom-opera
                           doom-opera-light
                           doom-nova
                           doom-peacock
                           doom-solarized-light
                           ;;doom-sourcerer
                           doom-spacegrey
                           doom-tomorrow-night
                           doom-tomorrow-day
                           ;;
                           ;; General Themes
                           ;;

                           spacemacs-dark
                           spacemacs-light)

    ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
    ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
    ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
    ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
    ;; refer to the DOCUMENTATION.org for more info on how to create your own
    ;; spaceline theme. Value can be a symbol or list with additional properties.
    ;; (default '(spacemacs :separator wave :separator-scale 1.5))
    ;; dotspacemacs-mode-line-theme '(all-the-icons :separator arrow)
    dotspacemacs-mode-line-theme 'doom


    ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
    ;; quickly tweak the mode-line size to make separators look not too crappy.
    dotspacemacs-default-font '("Source Code Pro"
                                 :size 15
                                 :weight normal
                                 :width normal)

    ;; Name of the default layout (default "Default")
    dotspacemacs-default-layout-name "Default"

    ;; If non-nil the default layout name is displayed in the mode-line.
    ;; (default nil)
    dotspacemacs-display-default-layout nil

    ;; If non-nil then the last auto saved layouts are resumed automatically upon
    ;; start. (default nil)
    dotspacemacs-auto-resume-layouts nil

    ;; If non-nil, auto-generate layout name when creating new layouts. Only has
    ;; effect when using the "jump to layout by number" commands. (default nil)
    dotspacemacs-auto-generate-layout-names nil

    ;; If non-nil, the paste transient-state is enabled. While enabled, after you
    ;; paste something, pressing `C-j' and `C-k' several times cycles through the
    ;; elements in the `kill-ring'. (default nil)
    dotspacemacs-enable-paste-transient-state nil

    ;; Which-key delay in seconds. The which-key buffer is the popup listing
    ;; the commands bound to the current keystroke sequence. (default 0.4)
    dotspacemacs-which-key-delay 0.4

    ;; Control where `switch-to-buffer' displays the buffer. If nil,
    ;; `switch-to-buffer' displays the buffer in the current window even if
    ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
    ;; displays the buffer in a same-purpose window even if the buffer can be
    ;; displayed in the current window. (default nil)
    dotspacemacs-switch-to-buffer-prefers-purpose nil


    ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
    ;; (Emacs 24.4+ only)
    dotspacemacs-fullscreen-at-startup t

    ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
    ;; Use to disable fullscreen animations in OSX. (default nil)
    dotspacemacs-fullscreen-use-non-native nil

    ;; If non-nil the frame is maximized when Emacs starts up.
    ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
    ;; (default nil) (Emacs 24.4+ only)
    dotspacemacs-maximized-at-startup nil

    ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
    ;; (default nil)
    dotspacemacs-smartparens-strict-mode nil

    ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
    ;; over any automatically added closing parenthesis, bracket, quote, etc…
    ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
    dotspacemacs-smart-closing-parenthesis nil

    ;; Select a scope to highlight delimiters. Possible values are `any',
    ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
    ;; emphasis the current one). (default 'all)
    dotspacemacs-highlight-delimiters 'all

    ;; If non-nil, start an Emacs server if one is not already running.
    ;; (default nil)
    dotspacemacs-enable-server nil

    ;; Set the emacs server socket location.
    ;; If nil, uses whatever the Emacs default is, otherwise a directory path
    ;; like \"~/.emacs.d/server\". It has no effect if
    ;; `dotspacemacs-enable-server' is nil.
    ;; (default nil)
    dotspacemacs-server-socket-dir nil

    ;; If non-nil, advise quit functions to keep server open when quitting.
    ;; (default nil)
    dotspacemacs-persistent-server nil

    ;; List of search tool executable names. Spacemacs uses the first installed
    ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
    ;; (default '("rg" "ag" "pt" "ack" "grep"))
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

    ;; Format specification for setting the icon title format
    ;; (default nil - same as frame-title-format)
    dotspacemacs-icon-title-format nil

    ;; Delete whitespace while saving buffer. Possible values are `all'
    ;; to aggressively delete empty line and long sequences of whitespace,
    ;; `trailing' to delete only the whitespace at end of lines, `changed' to
    ;; delete only whitespace for changed lines or `nil' to disable cleanup.
    ;; (default nil)
    dotspacemacs-whitespace-cleanup nil

    ;; Run `spacemacs/prettify-org-buffer' when
    ;; visiting README.org files of Spacemacs.
    ;; (default nil)
    dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (setq javascript-fmt-tool 'prettier)
  (setq-default git-magit-status-fullscreen t))

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
;;  (setq javascript-fmt-tool 'prettier)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (setq org-startup-indented t)
  (setq org-journal-dir "~/Dropbox/Notes/journal/")
  (setq magit-repository-directories '("~/Projects"))
  ;; (add-hook 'js2-mode-hook 'prettier-js-mode)
  ;; (add-hook 'web-mode-hook 'prettier-js-mode)
;;  ((js2-mode (javascript-fmt-tool . prettier)))
  ;;(setq-default cursor-type 'bar)
  ;;(setq-default evil-insert-state-cursor 'bar)
  ;;(setq-default evil-emacs-state-cursor 'bar)

  ;;(setq evil-default-cursor (quote (t "#750000"))
  ;;    evil-visual-state-cursor '("#880000" bar)
  ;;   evil-normal-state-cursor '("#750000" bar)
  ;;  evil-insert-state-cursor '("#e2e222" bar)
  ;; )

  (setq evil-default-cursor (quote (t "#750000"))
    evil-visual-state-cursor
    'bar
    evil-normal-state-cursor
    'bar
    evil-insert-state-cursor
    'bar)
  (add-hook 'text-mode-hook 'auto-fill-mode)
  (setq-default fill-column 80)
  ;;
  ;; org mode config
  ;;
  (setq org-agenda-files (quote ("~/Dropbox/Notes")))
  ;; auto save agenda
  (add-hook 'org-agenda-mode-hook
    (lambda ()
      (add-hook 'auto-save-hook 'org-save-all-org-buffers
        nil t)
      (auto-save-mode)))
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
  ;; Enable flashing mode-line on errors
  ;; (doom-themes-visual-bell-config)

  ;; or for treemacs users
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config)
  ;;
  ;; (org-indent-mode)
  ;; (find-file "~/Dropbox/Notes")
  )

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
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#56697A")
 '(jdee-db-active-breakpoint-face-colors (cons "#10151C" "#5EC4FF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#10151C" "#8BD49C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#10151C" "#384551"))
  '(package-selected-packages
     (quote
       (yapfify pytest pyenv-mode py-isort plantuml-mode pippel pipenv pyvenv pip-requirements live-py-mode importmagic epc ctable concurrent deferred helm-pydoc cython-mode company-anaconda anaconda-mode pythonic adoc-mode markup-faces command-log-mode yatemplate copy-as-format org-journal insert-shebang flycheck-bashate fish-mode company-shell yaml-mode flycheck treemacs-projectile treemacs-evil treemacs ht pfuture yasnippet-snippets xterm-color ws-butler writeroom-mode winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit symon string-inflection stickyfunc-enhance srefactor spaceline-all-the-icons smeargle slim-mode shell-pop scss-mode sayid sass-mode rjsx-mode reveal-in-osx-finder restclient-helm restart-emacs rainbow-delimiters pug-mode prettier-js popwin persp-mode pcre2el password-generator parinfer paradox ox-reveal ox-gfm overseer osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro org-mime org-download org-bullets org-brain open-junk-file ob-restclient ob-http neotree nameless multi-term move-text mmm-mode markdown-toc magit-svn magit-gitflow macrostep lorem-ipsum livid-mode link-hint launchctl json-navigator json-mode js2-refactor js-doc indent-guide impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag gruvbox-theme google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flyspell-correct-helm flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline diminish diff-hl counsel-projectile company-web company-tern company-statistics company-restclient column-enforce-mode clojure-snippets clj-refactor clean-aindent-mode cider-eval-sexp-fu centered-cursor-mode browse-at-remote auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent ace-window ace-link ace-jump-helm-line ac-ispell)))
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
 )
)
