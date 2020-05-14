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

(ejc-create-connection
 "the mysql"
 :classpath (concat "~/.m2/repository/mysql/mysql-connector-java/8.0.17"
                    "/mysql-connector-java-8.0.17.jar")
 :dbtype "mysql"
 :dbname "name"
 :host "1."
 :port "1306"
 :user "root"
 :password "2019"
 :separator "</?\.*>")
(provide 'db)
