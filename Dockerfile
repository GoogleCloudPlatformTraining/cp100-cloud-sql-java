FROM tomcat
MAINTAINER Romin Irani <romin.irani@mindstormsoftware.com>
ADD  app.war /usr/local/tomcat/webapps/
ENV CLOUDSQL_IP <CLOUD_SQL_INSTANCE_IP>
ENV CLOUDSQL_USERID <CLOUD_SQL_USER_ID>
ENV CLOUDSQL_PWD <CLOUD_SQL_USER_PASSWORD>
CMD ["catalina.sh", "run"]