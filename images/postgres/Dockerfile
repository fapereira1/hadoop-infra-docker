FROM postgres:10.3

LABEL Description="This is the postgres DB used for bigdata cluster frameworks;E.g: Hive Metastore etc.." \
      Author="Fabio Pereira <fapereira1@gmail.com>"

ENV PGDATA /var/lib/postgresql/data/pgdata
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB postgres

ADD 01-postgres-init.sql  /docker-entrypoint-initdb.d/
ADD 02-hive-schema-2.3.0.postgres.sql  /docker-entrypoint-initdb.d/
ADD 03-hive-txn-schema-2.3.0.postgres.sql  /docker-entrypoint-initdb.d/
ADD 04-create-schema-hue.sql /docker-entrypoint-initdb.d/

EXPOSE 5432

HEALTHCHECK CMD pg_isready -U ${POSTGRES_USER} -d ${POSTGRES_DB} || exit 1