FROM ubuntu:14.04
RUN apt-get update && apt-get -y upgrade && apt-get -y install software-properties-common && apt-get -y install wget && add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main"
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
RUN apt-get update && apt-get -y install postgresql-9.6 postgresql-client-9.6 postgresql-contrib-9.6
USER postgres
RUN /etc/init.d/postgresql start && psql --command "ALTER USER postgres WITH PASSWORD 'postgres';" 
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.6/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.6/main/postgresql.conf
VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]
CMD ["/usr/lib/postgresql/9.6/bin/postgres", "-D", "/var/lib/postgresql/9.6/main", "-c", "config_file=/etc/postgresql/9.6/main/postgresql.conf"]
EXPOSE 5432
RUN /etc/init.d/postgresql restart
