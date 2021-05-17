FROM postgres

ENV POSTGRES_PASSWORD pg
ENV POSTGRES_DB demoDB

COPY create_table.sql /docker-entrypoint-initdb.d/
