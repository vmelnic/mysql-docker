#
# MySQL database docker environment setup.
#

FROM mysql/mysql-server:8.0.23 as mysql

COPY ./provision/playbooks/database.yml /var/provision/playbooks/database.yml
COPY init-script.sh /docker-entrypoint-initdb.d/

RUN apt-get update -y --fix-missing && \
    apt-get install -y ansible python-mysqldb && \
    perl -pi -e 's/\r\n/\n/g' /docker-entrypoint-initdb.d/init-script.sh && \
    chmod 755 /docker-entrypoint-initdb.d/init-script.sh
