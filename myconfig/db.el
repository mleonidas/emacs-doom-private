(ejc-create-connection
 "the-test"
 :classpath (concat "~/.m2/repository/com/oracle"
                    "/ojdbc6/11.2.0.3/ojdbc6-11.2.0.3.jar")
 :dbtype "oracle"
 :dbname "orcl"
 :host "--------------"
 :port "1521"
 :user "-------"
 :password "-----------"
 :separator "</?\.*>")

(provide 'db)
