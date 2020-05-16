;; launch method 1: use dap launch
;; (dap-register-debug-template "you app"
;;                             (list :type "java"
;;                                   :request "launch"
;;                                   :args ""
;;                                  :vmArgs "-Drebel.base=~/.jrebel -Drebel.notification.url=http://localhost:17434 -agentpath:~/.IntelliJIdea2019.2/config/plugins/jr-ide-idea/lib/jrebel6/lib/libjrebel64.so -Drebel.plugins=~/.IntelliJIdea2019.2/config/plugins/jr-mp-ide-idea/lib/jr-mybatisplus-1.0.2.jar"
;;                                  :projectName "your project name maven module"
;;                                  :mainClass "com.good.Main"
;;                                  :env '(("DEV" . "1"))))

;; launch method 2: use maven springboot plugin (RECOMMENDED)
;; define a run.sh like blew:
;; #!/bin/bash
;; ps -ef | grep $YOUR PROGRAM NAME$ | awk '{print $2}' | xargs kill -9
;; mvn spring-boot:run -Dspring-boot.run.jvmArguments="-agentpath:~/.IntelliJIdea2019.2/config/plugins/jr-ide-idea/lib/jrebel6/lib/libjrebel64.so -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 -Drebel.plugins=~/.IntelliJIdea2019.2/config/plugins/jr-mp-ide-idea/lib/jr-mybatisplus-1.0.2.jar"
;;
;; (provide 'java-custom)
;;; java-custom.el ends here
