FROM mysql:8.0

WORKDIR /usr/src/app

COPY ./dump /docker-entrypoint-initdb.d