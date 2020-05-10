;; (dap-register-debug-template "you app"
;;                             (list :type "java"
;;                                   :request "launch"
;;                                   :args ""
;;                                  :vmArgs "-Drebel.base=~/.jrebel -Drebel.notification.url=http://localhost:17434 -agentpath:~/.IntelliJIdea2019.2/config/plugins/jr-ide-idea/lib/jrebel6/lib/libjrebel64.so -Drebel.plugins=~/.IntelliJIdea2019.2/config/plugins/jr-mp-ide-idea/lib/jr-mybatisplus-1.0.2.jar"
;;                                  :projectName "crpt-cloud-guarantee-service"
;;                                  :mainClass "com.good.Main"
;;                                  :env '(("DEV" . "1"))))

;; (provide 'java-custom)
;;; java-custom.el ends here
