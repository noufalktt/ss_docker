FROM java8

# Install other packages
RUN apt-get install -y curl
ARG NIFI_VERSION=1.3.0
ENV NIFI_BASE_DIR /opt/nifi
ENV NIFI_HOME $NIFI_BASE_DIR/nifi-$NIFI_VERSION
ENV NIFI_BINARY_URL http://192.168.2.143/nifi-1.3.0.tar.gz

RUN mkdir -p $NIFI_BASE_DIR
RUN wget -qO- $NIFI_BINARY_URL | tar -xvz -C $NIFI_BASE_DIR


