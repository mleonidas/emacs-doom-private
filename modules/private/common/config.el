;; none
;;
;; (use-package! dap-mode)
;; (use-package! ejc-sql)
;; (use-package! java-custom)
;; (use-package! db)

;; (load-theme 'doom-dracula t)

;; (global-set-key (kbd "M-i") 'lsp-goto-implementation)
;; (global-set-key (kbd "M-d") 'lsp-goto-type-definition)
;;
;;
;; (custom-set-faces
;;  '(lsp-face-semhl-field-static ((t (:foreground "#f1fa8c"))))
;;  '(dap-ui-breakpoint-verified-fringe ((t (:background "#0000FF" :foreground "#00FF00"))))
;;  '(dap-ui-pending-breakpoint-face ((t (:background "#8000ff" :foreground "#ffffff"))))
;;  '(dap-ui-verified-breakpoint-face ((t (:background "#8000ff" :foreground "#ffffff"))))
;;  '(font-lock-variable-name-face ((t (:foreground "#f1fa8c")))))
;;
;;
;; (setq doom-font (font-spec :family "Sarasa Fixed SC" :size 20))
;;
;; ~/.emacs.d/modules/ui/doom-dashboard/config.el
;; (defun doom-dashboard-widget-banner ()
;;  (let ((point (point)))
;;    (mapc (lambda (line)
;;            (insert (propertize (+doom-dashboard--center +doom-dashboard--width line)
;;                                'face 'doom-dashboard-banner) " ")
;;            (insert "\n"))
;;          ;; '("                              _               "
;;          ;;   "       ____  ___  ____ _   __(_)___ ___        "
;;          ;;   " / __ \\/ _ \\/ __ \\ | / / / __ `__ \\  "
;;          ;;   "      / / / /  __/ /_/ / |/ / / / / / / /       "
;;          ;;   "  /_/ /_/\\___/\\____/|___/_/_/ /_/ /_/     "))
;;
;; another picture
;; '("███╗   ██╗███████╗ ██████╗    ███████╗███╗   ███╗ █████╗  ██████╗███████╗   "
;; "████╗  ██║██╔════╝██╔═══██╗   ██╔════╝████╗ ████║██╔══██╗██╔════╝██╔════╝   "
;; "██╔██╗ ██║█████╗  ██║   ██║   █████╗  ██╔████╔██║███████║██║     ███████╗   "
;; "██║╚██╗██║██╔══╝  ██║   ██║   ██╔══╝  ██║╚██╔╝██║██╔══██║██║     ╚════██║   "
;; "██║ ╚████║███████╗╚██████╔╝██╗███████╗██║ ╚═╝ ██║██║  ██║╚██████╗███████║██╗"
;; "╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝╚═╝"))
