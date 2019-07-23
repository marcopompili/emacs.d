;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Setting this buffer as init file
(setq user-init-file (or load-file-name (buffer-file-name)))

;; Setting up Melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; add custom-modes (outside melpa) load path
;; (add-to-list 'load-path "~/.emacs.d/custom-modes")
;; (add-to-list 'load-path "~/.emacs.d/custom-pkgs")

;; Loads PKGBUILD from arch package
(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode)) auto-mode-alist))

;; emacs EMMS multimedia system
;; (require 'emms-setup)
;; (emms-standard)
;; (emms-default-players)

;; This is where the magic happens
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#1c1e1f" "#e74c3c" "#b6e63e" "#e2c770" "#268bd2" "#fb2874" "#66d9ef" "#d6d6d4"])
 '(beacon-color "#d54e53")
 '(cider-cljs-lein-repl
   "(do (require 'figwheel-sidecar.repl-api) (figwheel-sidecar.repl-api/start-figwheel!) (figwheel-sidecar.repl-api/cljs-repl))")
 '(cider-lein-parameters "with-profile +dev repl :headless")
 '(company-box-icons-alist (quote company-box-icons-all-the-icons))
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (doom-molokai)))
 '(custom-safe-themes
   (quote
    ("d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "0eccc893d77f889322d6299bec0f2263bffb6d3ecc79ccef76f1a2988859419e" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "84da7b37214b4ac095a55518502dfa82633bee74f64daf6e1785322e77516f96" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "6bc387a588201caf31151205e4e468f382ecc0b888bac98b2b525006f7cb3307" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "256bd513a9875cd855077162cdfee8d75b0ad7e18fe8b8cbc10412561fbef892" "80365dd15f97396bdc38490390c23337063c8965c4556b8f50937e63b5e9a65c" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "9954ed41d89d2dcf601c8e7499b6bb2778180bfcaeb7cdfc648078b8e05348c6" "49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "addfaf4c6f76ef957189d86b1515e9cf9fcd603ab6da795b82b79830eed0b284" "a8c210aa94c4eae642a34aaf1c5c0552855dfca2153fa6dd23f3031ce19453d4" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "7eded71a68f518d9e4d4580b477a3fb03bf2d0ecc1234ff361a7fdc1591b1c9d" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "f8fb7488faa7a70aee20b63560c36b3773bd0e4c56230a97297ad54ff8263930" "9129c2759b8ba8e8396fe92535449de3e7ba61fd34569a488dd64e80f5041c9f" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "f8067b7d0dbffb29a79e0843797efabdf5e1cf326639874d8b407e9b034136a4" "97965ccdac20cae22c5658c282544892959dc541af3e9ef8857dbf22eb70e82b" "5f27195e3f4b85ac50c1e2fac080f0dd6535440891c54fcfa62cdcefedf56b1b" default)))
 '(diff-hl-dired-mode t t)
 '(diff-hl-margin-mode t)
 '(display-line-numbers t)
 '(dumb-jump-mode t)
 '(fci-rule-color "#555556")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(global-highlight-parentheses-mode t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(hl-sexp-background-color "#1c1f26")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#fd971f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#b6e63e"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#525254"))
 '(line-spacing 0.2)
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(objed-cursor-color "#e74c3c")
 '(package-selected-packages
   (quote
    (xref-js2 rjsx-mode indium diff-hl guru-mode zeno-theme one-themes doom-themes all-the-icons csv-mode restclient restclient-helm company-lua figlet company-edbi edbi edbi-sqlite company-box tern glsl-mode-hook glsl-mode solarized-theme nimbus-theme poet-theme vue-html-mode vue-mode gruvbox-theme color-theme-sanityinc-tomorrow material-theme company-tern fortune-cookie monokai-theme cyberpunk-theme el-search js2-refactor go-mode cmake-mode lice 0blayout realgud langtool geben web-mode php-mode yaml-mode websocket smooth-scroll markdown-mode dumb-jump helm-dash parinfer paredit xclip julia-mode python flycheck flycheck-haskell ac-cider magit highlight-parentheses haskell-mode cider company which-key sx slime projectile org nodejs-repl lua-mode dockerfile-mode docker)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#1c1e1f")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (list
    (cons 20 "#b6e63e")
    (cons 40 "#c4db4e")
    (cons 60 "#d3d15f")
    (cons 80 "#e2c770")
    (cons 100 "#ebb755")
    (cons 120 "#f3a73a")
    (cons 140 "#fd971f")
    (cons 160 "#fc723b")
    (cons 180 "#fb4d57")
    (cons 200 "#fb2874")
    (cons 220 "#f43461")
    (cons 240 "#ed404e")
    (cons 260 "#e74c3c")
    (cons 280 "#c14d41")
    (cons 300 "#9c4f48")
    (cons 320 "#77504e")
    (cons 340 "#555556")
    (cons 360 "#555556")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
 '(which-key-mode t)
 '(window-divider-mode nil)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))

; Adding customized magic
(defun cljs-doc ()
  (interactive)
  (setq-local helm-dash-docsets '("clojure")))

;; Parinfer clojure hook
(add-hook 'clojure-mode-hook 'parinfer-mode)

;; Helm dash
(setq helm-dash-browser-func 'eww)
(global-set-key (kbd "C-h C-d") 'helm-dash-at-point)

;; Dumb jump
(global-set-key (kbd "C-x C-j g") 'dumb-jump-go)
(global-set-key (kbd "C-x C-j p") 'dumb-jump-back)
(global-set-key (kbd "C-x C-j q") 'dumb-jump-quick-look)

;; dumb-jump-go-other-window exactly like dumb-jump-go but uses find-file-other-window instead of find-file
;; dumb-jump-go-prefer-external like dumb-jump-go but will prefer definitions not in the current buffer
;; dumb-jump-go-prefer-external-other-window expected combination of dumb-jump-go-prefer-external and dumb-jump-go-other-window

;; smooth scroll one line at a time
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; js2-mode full activation
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; js2-minor-mode with js-mode
;; (add-hook 'js-mode-hook 'js2-minor-mode)
;; (add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; js2 advancements
;; https://emacs.cafe/emacs/javascript/setup/2017/04/23/emacs-setup-javascript.html
;; (add-hook 'js2-mode-hook #'js2-refactor-mode)
;; (js2r-add-keybindings-with-prefix "C-c C-r")
;; (define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
;; (define-key js-mode-map (kbd "M-.") nil)

;; (add-hook 'js2-mode-hook (lambda ()
;;                            (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

;; company-tern (JS completion)
;; https://emacs.cafe/emacs/javascript/setup/2017/05/09/emacs-setup-javascript-2.html
(require 'company)
(require 'company-tern)

(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                          (tern-mode t)
                          (company-mode t)))

;; Disable completion keybindings, as we use xref-js2 instead (tern-mode-keymap gives an error)
;; (define-key tern-mode-keymap (kbd "M-.") nil)
;; (define-key tern-mode-keymap (kbd "M-,") nil)

;; Indium interaction mode
(require 'indium)
(add-hook 'js2-mode-hook #'indium-interaction-mode)

;; Indium: Launch temporary instance of chrome
(setq indium-chrome-use-temporary-profile t)

;; Indium debug log
;; (setq indium-client-debug t)

;; GLSL mode
(autoload 'glsl-mode "glsl-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vs\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.fs\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))

;; lua mode
(add-to-list 'load-path "~/.emacs.d/custom-modes/company-lua")

(defun my-lua-mode-company-init ()
  (setq-local company-backends '((company-lua
                                  company-etags
                                  company-dabbrev-code
                                  company-yasnippet))))

; Lua company mode hook
(add-hook 'lua-mode-hook #'my-lua-mode-company-init)

;; langtool support
(setq langtool-language-tool-jar "~/.emacs.d/LanguageTool-4.6-SNAPSHOT/languagetool-commandline.jar")
(setq langtool-default-language "en-US")
(setq langtool-mother-tongue "it")

;; Sorry but emacs startup screen makes my eyes bleed
(setq inhibit-startup-screen t)

;; Figlet support
;; (autoload 'figlet "figlet" nil t)

;; Use fortune cookie for great wisdom
(fortune-cookie-mode)

;; Ignore GConf (workaround for setting custom faces)
;; https://emacs.stackexchange.com/questions/32641/something-changes-the-default-face-in-my-emacs 
(define-key special-event-map [config-changed-event] 'ignore)

;; Custom faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray10" :foreground "#bdbdb3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 103 :width normal :foundry "simp" :family "Hack"))))
 '(company-scrollbar-bg ((t (:background "#33b333b333b3"))))
 '(company-scrollbar-fg ((t (:background "#26e626e626e6"))))
 '(company-tooltip ((t (:inherit default :background "#5a195a195a19"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(minimap-active-region-background ((t (:background "#222222"))))
 '(minimap-font-face ((t (:height 35 :family "Hack")))))

;; Indentation (No Tabs)
(setq-default indent-tabs-mode nil)
(setq tab-width 2)

;; Javascript indentation
(setq js-indent-level 2)
(setq js2-basic-offset 2)

;; Paredit config
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)

;; Company-box
(add-hook 'company-mode-hook 'company-box-mode)

;; Windmove
(windmove-default-keybindings)

;; Minimap configuration
;; line numbers only for prog-mode (to avoid using line-numbers on minimap)
;; (global-set-key (kbd "C-x t") 'minimap-mode)
;; (add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; emacs auto-scrolling
(setq scroll-conservatively 24
      scroll-margin 6)

;; diff-hl magit integration
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

;; Fix for emacs 26.2
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
