#!/bin/bash

service mysql start && \
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION; FLUSH PRIVILEGES;" && \
service mysql restart && \
/bin/bash
