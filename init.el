;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;; Code:
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
 '(company-box-icons-alist 'company-box-icons-images)
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes '(monokai))
 '(custom-safe-themes
   '("78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" "d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" "e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "d0ebd553aa00983952185f9d0e1a004967614d7c75fc8547f1b9af1f26b77dfc" "94aef4c4f9cdd311271bf9d53afa9c0177158d75d65f1eb8299c1630bd92eceb" "933390027d8e1988f69d192af6011cbf27062131efa6ec7e8c466e074e8361aa" "3ab20589e7267ac9d2762402c794c9d9038c1c14c74361265283caf3b367efea" "34eedeff4f88404f8c7f7c7f45b3328b9bec171f6d9eede8e231cad4996eafb8" "e93f5dd31f755a6d8a845efca6eee237ccaeb9a4dc58d60a6c6e832b7ac1bfaa" "7922b14d8971cce37ddb5e487dbc18da5444c47f766178e5a4e72f90437c0711" "e7308299113bf8e50c63038151b0dce93f40ac1b8c1fe8ba8c37e3b8bbf91651" "e57eec7e0399272aaca7985a5cc94f3a2675db4cd2dbd79a99c72786e489e43c" "0c6a36393d5782839b88e4bf932f20155cb4321242ce75dc587b4f564cb63d90" "9ef81da35ce99a4c7155db7d46e4f8c20a51860d6879cf082e3ed1c5222c17d3" "f3ab34b145c3b2a0f3a570ddff8fabb92dafc7679ac19444c31058ac305275e1" default))
 '(diff-hl-dired-mode t t)
 '(diff-hl-margin-mode t)
 '(display-line-numbers t)
 '(dumb-jump-mode t)
 '(fci-rule-color "#555556")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(global-company-mode t)
 '(global-diff-hl-mode t)
 '(global-highlight-parentheses-mode t)
 '(highlight-changes-colors '("#FD5FF0" "#AE81FF"))
 '(highlight-parentheses-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100)))
 '(hl-bg-colors
   '("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(hl-sexp-background-color "#1c1f26")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#fd971f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#b6e63e"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#525254"))
 '(line-spacing 0.2)
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(objed-cursor-color "#e74c3c")
 '(package-selected-packages
   '(gdscript-mode all-the-icons-dired melancholy-theme twilight-theme cargo mood-one-theme lsp-ui flycheck-color-mode-line flycheck-pos-tip exec-path-from-shell cuda-mode pyenv-mode kaolin-themes indium helm-dash use-package opencl-mode packed coffee-mode dante hasky-stack hindent company-jedi company-ghci company-glsl company-go company-nginx erlang rust-mode pkgbuild-mode yasnippet-snippets elixir-mode elm-mode luarocks xref-js2 rjsx-mode diff-hl guru-mode one-themes all-the-icons csv-mode restclient restclient-helm company-lua figlet company-box glsl-mode-hook glsl-mode nimbus-theme poet-theme gruvbox-theme color-theme-sanityinc-tomorrow material-theme fortune-cookie monokai-theme cyberpunk-theme el-search go-mode cmake-mode lice 0blayout realgud langtool geben web-mode yaml-mode websocket markdown-mode dumb-jump parinfer paredit xclip julia-mode flycheck flycheck-haskell ac-cider magit highlight-parentheses haskell-mode cider company which-key slime projectile org nodejs-repl lua-mode dockerfile-mode docker))
 '(pdf-view-midnight-colors (cons "#d6d6d4" "#1c1e1f"))
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
   '(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
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
;; (global-set-key (kbd "C-x C-j g") 'dumb-jump-go)
;; (global-set-key (kbd "C-x C-j p") 'dumb-jump-back)
;; (global-set-key (kbd "C-x C-j q") 'dumb-jump-quick-look)

;; dumb-jump-go-other-window exactly like dumb-jump-go but uses find-file-other-window instead of find-file
;; dumb-jump-go-prefer-external like dumb-jump-go but will prefer definitions not in the current buffer
;; dumb-jump-go-prefer-external-other-window expected combination of dumb-jump-go-prefer-external and dumb-jump-go-other-window

;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; deactivate js2-mode warnings
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)

;; ((js2-mode (flycheck-checker . javascrpt-eslint)))

;; turn on flycheck globally
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; smooth scroll one line at a time
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; js2-mode full activation
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; js2-minor-mode with js-mode
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; (setq js2-strict-missing-semi-warning nil)

;; js2 advancements
;; https://emacs.cafe/emacs/javascript/setup/2017/04/23/emacs-setup-javascript.html
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
                           (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

;; company-tern (JS completion)
;; https://emacs.cafe/emacs/javascript/setup/2017/05/09/emacs-setup-javascript-2.html
;; (require 'company)
;; (require 'company-tern)

;; (add-to-list 'company-backends 'company-tern)
(add-hook 'js-mode-hook (lambda ()
                          ;; (tern-mode t)
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
(setq indium-client-debug t)

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

;; Python mode config
(setq python-shell-interpreter "/usr/bin/python")
(add-to-list 'company-backends 'company-jedi)

;; Erlang
(setq load-path (cons "/usr/lib/erlang/lib/tools-3.4.2/emacs" load-path))
(setq erlang-root-dir  "/usr/lib/erlang")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(require 'erlang-start)

;; langtool support
(setq langtool-language-tool-jar "~/.emacs.d/LT/languagetool-commandline.jar")
(setq langtool-default-language "en-US")
(setq langtool-mother-tongue "it")

;; Sorry but emacs startup screen makes my eyes bleed
(setq inhibit-startup-screen t)

;; Figlet support
;; (autoload 'figlet "figlet" nil t)

;; Use fortune cookie for great wisdom
(use-package fortune-cookie
  :config
  (setq fortune-cookie-cowsay-args "-f lux -s")
  (fortune-cookie-mode))

;; Ignore GConf (workaround for setting custom faces)
;; https://emacs.stackexchange.com/questions/32641/something-changes-the-default-face-in-my-emacs
(define-key special-event-map [config-changed-event] 'ignore)

;; Custom faces
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray10" :foreground "#bdbdb3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "SRC" :family "Hack")))))

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
(use-package company-box
  :hook (company-mode . company-box-mode))

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

;; Set dired guessing for moving files to true
(setq dired-dwim-target t)

(when (display-graphic-p) (require 'all-the-icons))
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; lsp-mode config
(require 'lsp-mode)
(add-hook 'gdscript-mode-hook #'lsp)

;; godot gdscript support
(require 'gdscript-mode)
