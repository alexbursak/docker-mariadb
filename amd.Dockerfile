FROM ubuntu:18.04

RUN apt-get update

RUN echo "Europe/London" > /etc/timezone

# Install other
RUN apt-get install vim -y && \
    apt install mysql-server -y

RUN sed -i 's/^bind-address/#bind-address/g' /etc/mysql/mysql.conf.d/mysqld.cnf

COPY ./entrypoint.sh /entrypoint.sh

EXPOSE 3306

ENTRYPOINT /entrypoint.sh
