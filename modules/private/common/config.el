;; none
;;
;; (use-package! dap-mode)
(use-package! ejc-sql)
;; (use-package! java-custom)
(use-package! db-work)

(load-theme 'doom-vibrant t)

;; (global-set-key (kbd "M-i") 'lsp-goto-implementation)
;; (global-set-key (kbd "M-d") 'lsp-goto-type-definition)
;;
;;
;; (custom-set-faces
;;  '(lsp-face-semhl-field-static ((t (:foreground "#f1fa8c"))))
;;  '(dap-ui-breakpoint-verified-fringe ((t (:background "#8000ff" :foreground "#ffffff"))))
;;  '(dap-ui-pending-breakpoint-face ((t (:background "#0000FF" :foreground "#00FF00"))))
;;  '(dap-ui-verified-breakpoint-face ((t (:background "#0000FF" :foreground "#00FF00"))))
;;  '(lsp-face-highlight-write ((t (:background "#373859" :foreground "#f8f8f2" :distant-background "#f8f8f2" ))))
;;  '(lsp-face-highlight-read ((t (:background "#373859" :foreground "#f8f8f2" :distant-background "#f8f8f2" ))))
;;
;;
(setq doom-font (font-spec :family "Sarasa Fixed SC" :size 20))
;; (setq doom-font (font-spec :family "Operator Mono Light" :size 20))
;; Operator Mono
;;
;; (setq org-agenda-files (list "1.org" "2.org"))
;; ~/.emacs.d/modules/ui/doom-dashboard/config.el
;;
;; (defvar +doom-dashboard-name "*dashboard*"
;;   "The name to use for the dashboard buffer.")
;;
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

(fset 'marco-java-new
   [?b ?v ?e ?y ?A ?  escape escape ?p ?\; ?r ?A ?  ?= ?  ?n ?e ?w ?  escape escape ?p ?a ?\( ?\) ?\; escape escape ?\; ?w])

(map! :ne "SPC i n" 'marco-java-new)
