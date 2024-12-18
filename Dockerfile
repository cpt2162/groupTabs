FROM postgres:latest

COPY /api/init /docker-entrypoint-initdb.d/