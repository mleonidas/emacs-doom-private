;; none
;;
;; (use-package! dap-mode)
;; (use-package! java-custom)
;;
;; ~/.emacs.d/modules/ui/doom-dashboard/config.el
;;(defun doom-dashboard-widget-banner ()
;;  (let ((point (point)))
;;    (mapc (lambda (line)
;;            (insert (propertize (+doom-dashboard--center +doom-dashboard--width line)
;;                                'face 'doom-dashboard-banner) " ")
;;            (insert "\n"))
;;          '("                              _               "
;;            "       ____  ___  ____ _   __(_)___ ___        "
;;            " / __ \\/ _ \\/ __ \\ | / / / __ `__ \\  "
;;            "      / / / /  __/ /_/ / |/ / / / / / / /       "
;;            "  /_/ /_/\\___/\\____/|___/_/_/ /_/ /_/     "))

;; (defun doom-dashboard-widget-footer ()
;;   (insert
;;    "\n"
;;    (+doom-dashboard--center
;;     (- +doom-dashboard--width 2)
;;     (with-temp-buffer
;;       ;; (insert-text-button (or (all-the-icons-octicon "octoface" :face 'doom-dashboard-footer-icon :height 1.3 :v-adjust -0.15)
;;       ;;                         (propertize "github" 'face 'doom-dashboard-footer))
;;       ;;                     'action (lambda (_) (browse-url "https://github.com/hlissner/doom-emacs"))
;;       ;;                     'follow-link t
;;       ;;                     'help-echo "Open Doom Emacs github page")
;;       (buffer-string)))
;;    "\n"))
