;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 17))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
;;
(load-theme 'doom-gruvbox t)
;; (def-package! company-box
;;   :after company
;;   :hook (company-mode . company-box-mode))

(def-package! lsp-java
  :config
)
(setq lsp-enable-file-watchers nil)
(setq lsp-java-jdt-download-url "https://mirrors.tuna.tsinghua.edu.cn/eclipse/jdtls/snapshots/jdt-language-server-latest.tar.gz")
(add-hook 'java-mode-hook #'lsp)
(global-set-key (kbd "M-i") 'lsp-goto-implementation)
(global-set-key (kbd "M-d") 'lsp-goto-type-definition)
(def-package! dap-java
  :defer 2)
;;(def-package! dap-mode
;;  :after java-mode
;;  :ensure t
;;  :config
;;  (dap-mode t)
;;  (dap-ui-mode t))
(map! :ne "SPC j" 'evil-avy-goto-char)
(map! :ne "SPC z" 'counsel-fzf)
(map! :ne "; w" 'save-buffer)
(map! :ne "M-1" 'neotree-find)
(map! :ne "SPC v" 'vterm)

(def-package! evil-fcitx)
(def-package! ejc-sql)
(add-hook 'ejc-sql-minor-mode-hook
          (lambda ()
            (auto-complete-mode nil)))
(add-hook 'ejc-sql-connected-hook
          (lambda ()
            (ejc-set-fetch-size 50)
            (ejc-set-max-rows nil)
            (ejc-set-column-width-limit nil)
            ))
(setq ejc-result-table-impl 'ejc-result-mode)
(def-package! db)

