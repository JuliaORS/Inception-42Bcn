FROM debian:11.7

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

ENTRYPOINT ["mysqld"]
