FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=csi2132
ENV MYSQL_DATABASE=ehotels_db
ENV MYSQL_USER=ehotels_access
ENV MYSQL_PASSWORD=csi2132

# Must be built in the /sql directory
ADD ./docker_script.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
