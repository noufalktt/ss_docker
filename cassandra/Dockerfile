FROM openjdk:8-jre

ENV SCRIPT_BASE_URL http://192.168.2.143
# Install other packages
RUN apt-get install -y curl

#install casandra
RUN echo "deb http://www.apache.org/dist/cassandra/debian 311x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list 
RUN curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add - 
RUN apt-get update 
RUN apt-get -y install cassandra 
RUN sed -i "/^[^#]*ulimit/ s/.*/#&/"  /etc/init.d/cassandra
RUN sed -i 's/start_rpc: false/start_rpc: true/g' /etc/cassandra/cassandra.yaml 
EXPOSE 9042

#RUN wget $SCRIPT_BASE_URL/schema.sql
#RUN wget $SCRIPT_BASE_URL/groups.sql
#RUN wget $SCRIPT_BASE_URL/assets.sql
#RUN wget $SCRIPT_BASE_URL/unit.sql

#COPY cas_entrypoint.sh /cas_entrypoint.sh
#RUN chown root:root -R /cas_entrypoint.sh

#ENTRYPOINT ["/cas_entrypoint.sh"]

#CMD ["cassandra","-Rf"]


