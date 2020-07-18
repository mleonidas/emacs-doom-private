;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.

(set-default 'truncate-lines nil)
(setq truncate-lines t)
(setq doom-modeline-buffer-file-name-style 'truncate-with-project)
(setq undo-tree-auto-save-history t
      undo-tree-history-directory-alist `(("." .,
                                          (expand-file-name "~/.emacs.d/undo-tree-hist/"))))
;;(custom-set-faces '(org-table ((t (:foreground "#a9a1e1" :height 109 :family "")))))

(setq user-full-name "--"
      user-mail-address "--")

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers-type t)

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
;; (load-theme 'doom-gruvbox t)


(use-package yasnippet :config (yas-global-mode))
(use-package lsp-mode
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  ;; :custom (setq lsp-completion-enable-additional-text-edit nil)
 )
(use-package! lsp-java
  :config
  (add-hook 'java-mode-hook 'lsp)
  (setq lombok-jar-path (expand-file-name "~/.doom.d/myconfig/lombok.jar"))
  (setq lsp-java-vmargs `(
                          , (concat "-javaagent:" lombok-jar-path)
                          , (concat "-Xbootclasspath/a:" lombok-jar-path)
                            )))
;; (setq company-require-match t)
;; to enable the lenses
;; (add-hook 'lsp-mode-hook #'lsp-lens-mode)
;; (add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)

(setq lsp-enable-file-watchers nil)

(setq lsp-java-jdt-download-url "https://mirrors.tuna.tsinghua.edu.cn/eclipse/jdtls/snapshots/jdt-language-server-latest.tar.gz")
(add-hook 'java-mode-hook #'lsp)

;; lsp-completion
;; (setq lsp-java-content-provider-preferred "fernflower")
(setq lsp-java-completion-guess-method-arguments t)
(setq lsp-java-format-on-type-enabled t)
(setq lsp-java-autobuild-enabled t)
(setq lsp-java-import-maven-enabled t)
(setq lsp-java-maven-download-sources t)
(setq lsp-java-configuration-maven-user-settings (expand-file-name "~/.m2/settings.xml"))

(setq lsp-prefer-capf t)
;; (setq lsp-completion-enable-additional-text-edit t)
(setq company-tooltip-limit 12)
(setq company-tooltip-offset-display 'lines)
;; (global-set-key (kbd "M-i") 'lsp-goto-implementation)
;; (global-set-key (kbd "M-d") 'lsp-goto-type-definition)
(use-package! dap-java
  :defer 2)
(use-package! dap-mode
  :defer 2
  :ensure t :after lsp-mode
  :config
  (dap-mode t)
  (set-company-backend! 'dap-ui-repl-mode 'company-dap-ui-repl)
  (dap-ui-mode t))
(setq dap-output-window-max-height 20)

(map! :ne "f" 'evil-avy-goto-word-1)
(map! :ne "SPC j" 'evil-avy-goto-word-1)
(map! :ne "SPC z" 'counsel-fzf)
(map! :ne "SPC v" 'vterm)
(map! :ne "SPC l" 'evil-window-right)
(map! :ne "SPC r" 'evil-window-left)
(map! :ne "SPC j" 'evil-window-down)
(map! :ne "SPC k" 'evil-window-up)
(map! :ne ";-1" 'neotree-find)
(map! :ne "M-j" 'drag-stuff-down)
(map! :ne "M-k" 'drag-stuff-up)
;; (map! :ie "C-h" 'c-hungry-backspace)
(map! :ne "; w" 'save-buffer)
(map! :ne "; b" 'switch-to-buffer)
(map! :ne "; e" 'ace-window)
(map! :ne "; d" 'zygospore-toggle-delete-other-windows)
(map! :ne "; f" 'neotree-find)
(map! :ne "; h" 'neotree-toggle)
(map! :ne "; i" 'lsp-java-organize-imports)
(map! :ne "; m" 'lsp-java-add-unimplemented-methods)
(map! :ne "; o" 'projectile-dired)
(map! :ne "; g" 'ejc-show-last-result)
(map! :ne "; a" 'ranger)
(map! :ne "; s" 'lsp-workspace-restart)
(map! :ne "M f" 'lsp-find-definition)

(map! :ne ", f" 'lsp-format-buffer)
(map! :ne ", n" 'dap-next)
(map! :ne ", b" 'dap-breakpoint-toggle)
(map! :ne ", c" 'dap-continue)
(map! :ne ", r" 'dap-eval-region)
(map! :ne ", a" 'dap-eval-thing-at-point)
(map! :ne ", d" 'dap-debug)
(map! :ne ", u" 'dap-ui-repl)
(map! :ne ", t" 'dap-breakpoint-condition)
;;
;; (global-set-key (kbd "<f7>") 'symbol-overlay-mode)
;;  ("C-<backspace>" . vterm-send-C-h)
;; (general-def 'vterm--self-insert vterm-mode-map "C-h" 'vterm-send-C-h)
;; (general-def '(vterm-mode) (vterm-mode-map "M-[" 'vterm-send-C-h))

;; (add-hook 'evil-insert-state-entry-hook
;;     (lambda () (interactive) (define-key evil-insert-state-map (kbd "M-[") 'c-hungry-backspace)))
;; (general-def 'insert "C-h" 'c-hungry-backspace)
(use-package vterm
    :ensure t)
(general-def 'insert vterm-mode-map "C-h" 'vterm-send-C-h)
(define-key global-map "\C-h" 'backward-delete-char-untabify)
(define-key global-map "\C-j" 'evil-scroll-down)
(define-key global-map "\C-k" 'evil-scroll-up)
(define-key global-map "\M-f" 'lsp-find-definition)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-insert-state-map (kbd "C-u")
  (lambda ()
    (interactive)
    (evil-delete (point-at-bol) (point))))

(define-key vterm-mode-map (kbd "<C-backspace>")
    (lambda () (interactive) (vterm-send-key (kbd "C-w"))))
;;(setq vterm-module-cmake-args "-DUSE_SYSTEM_LIBVTERM=no")
;;(use-package vterm
;; :load-path  "~/soft/emacs-libvterm/")
;; (define-key vterm-mode-map (kbd "M-[")
;;     (lambda () (interactive) (vterm-send-key (kbd "C-h"))))
;; (define-key evil-insert-state-map (kbd "C-h") 'c-hungry-backspace)

;; region forward
(defalias 'forward-evil-word 'forward-evil-symbol)

(use-package! evil-fcitx)
(use-package! string-inflection)
(map! :ne "; r" 'string-inflection-java-style-cycle)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:inherit (shadow default) :foreground "DimGray" :background "dark"))))
 '(linum-highlight-face ((t (:background "#282828" :foreground "#EEEE00"))))
 '(lsp-face-semhl-field ((t (:foreground "#6272a4"))))
 '(lsp-face-semhl-variable ((t (:foreground "#6272a4"))))
 '(lsp-face-semhl-variable-local ((t (:foreground "#6272a4"))))
 '(powerline-active0 ((t (:foreground "#f8f8f2"))))
 '(powerline-active1 ((t (:foreground "#FFDEAD"))))
 '(show-paren-match ((t (:background "#6272a4" :foreground "#00000")))))

(setq doom-modeline-modal-icon nil)
(setq evil-emacs-state-tag "EMACS")
(setq evil-hybrid-state-tag "HYBRID")
(setq evil-insert-state-tag "INSERT")
(setq evil-lisp-state-tag "LISP")
(setq evil-motion-state-tag "MOTION")
(setq evil-normal-state-tag "NORMAL")
(setq evil-operator-state-tag "OPERATOR")
(setq evil-visual-state-tag "VISUAL")

(use-package! insert-translated-name)
(setq insert-translated-name-translate-engine "youdao")
(map! :ne "; t" 'insert-translated-name-replace-with-camel)

;; (setq counsel-fzf-dir-function 'vc-root-dir)
(setq counsel-fzf-dir-function
(lambda ()
  (let ((d (locate-dominating-file default-directory ".git")))
    (if (or (null d)
      (equal (expand-file-name d)
        (expand-file-name "~/")))
  default-directory
d))))

;; (use-package! org-bullets-mode
;;   :custom
;;   (org-ellipsis "⤵ ")
;;   :hook (org-mode . org-bullets-mode))

(setq org-export-with-sub-superscripts nil)

(setq org-hide-emphasis-markers t
      org-fontify-done-headline t
      org-hide-leading-stars t
      org-pretty-entities nil
      )
(setq prettify-symbols-unprettify-at-point 'right-edge)
(add-hook 'org-mode-hook 'prettify-symbols-mode)
;; load image in org mode
(defun org-toggle-image-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (iimage-mode))
(setq org-image-actual-width nil)

(setq plantuml-default-exec-mode
      (cond ((executable-find "plantuml") 'executable)))
(setq plantuml-jar-path
      (expand-file-name "~/.doom.d/myconfig/plantuml.jar"))
(setq org-plantuml-jar-path
      (expand-file-name "~/.doom.d/myconfig/plantuml.jar"))

(org-babel-do-load-languages
  'org-babel-load-languages
  '((emacs-lisp . nil)
    (org . t)
    (plantuml . t)))
(setq org-confirm-babel-evaluate nil)

;;number-region
(defun number-region (start end)
  (interactive "r")
  (let* ((count 1)
     (indent-region-function (lambda (start end)
                   (save-excursion
                     (setq end (copy-marker end))
                     (goto-char start)
                     (while (< (point) end)
                       (or (and (bolp) (eolp))
                       (insert (format "%d " count))
                       (setq count (1+ count)))
                       (forward-line 1))
                     (move-marker end nil)))))
    (indent-region start end)))
(setq gc-cons-threshold (* 2 1000 1000))

(setq display-line-numbers-type 'relative)

(use-package! bm)
(map! :ne "' c" 'bm-toggle)
(map! :ne "' n" 'bm-next)
(map! :ne "' p" 'bm-previous)
(bm-bookmark-add nil nil t)

;; skip localAreaNetwork(Lan) and loacalhost
(setq url-proxy-services '(("no_proxy" . "^\\(localhost\\|172.*\\|10.*\\|192.*\\|*.qq.com\\)")))

(setq company-box-doc-enable nil)

(defmacro k-time (&rest body)
  "Measure and return the time it takes evaluating BODY."
  `(let ((time (current-time)))
     ,@body
     (float-time (time-since time))))

(defvar k-gc-timer
  (run-with-idle-timer 15 t
                       'garbage-collect))

(setq ejc-result-table-impl 'ejc-result-mode)

(setq vterm-kill-buffer-on-exit t)


;; (use-package company-tabnine :ensure t)
;; (add-to-list 'company-backends #'company-tabnine)
;; ;; workaround for company-transformers
;; (setq company-tabnine--disable-next-transform nil)
;; (defun my-company--transform-candidates (func &rest args)
;;   (if (not company-tabnine--disable-next-transform)
;;       (apply func args)
;;     (setq company-tabnine--disable-next-transform nil)
;;     (car args)))

;; (defun my-company-tabnine (func &rest args)
;;   (when (eq (car args) 'candidates)
;;     (setq company-tabnine--disable-next-transform t))
;;   (apply func args))

;; (advice-add #'company--transform-candidates :around #'my-company--transform-candidates)
;; (advice-add #'company-tabnine :around #'my-company-tabnine)

 (setq browse-url-browser-function 'w3m-browse-url)
 (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
 ;; optional keyboard short-cut
 (global-set-key "\C-xm" 'browse-url-at-point)

(setq tao-theme-use-boxes nil)
(setq neo-window-fixed-size nil)

;; (setq url-proxy-services '(("no_proxy" . "^\\(localhost\\|127.*\\|192.*\\|*.oak.net.cn\\|*.qq.com\\)")))
                           ;; ("http" . "my-corp-proxy:8080")
                           ;; ("https" . "my-port-proxy:8080")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ranger vterm zygospore dap-mode))))



