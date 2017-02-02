# MYSQL
FROM mysql:5.7
MAINTAINER Rajinder Deol <deol.rajinder@gmail>

ENV MYSQL_ROOT_PASSWORD wordpress
ENV MYSQL_DATABASE wordpress

# wordpress basic sql to start with
# MYSQL will import the sql file at startup
ADD wordpress_data.sql /docker-entrypoint-initdb.d/