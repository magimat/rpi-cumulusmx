FROM mono:latest

RUN  apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean

RUN apt-get install unzip

COPY CumulusMX.zip /

RUN unzip CumulusMX.zip

RUN rm CumulusMX.zip

WORKDIR /CumulusMX

CMD [ "mono",  "CumulusMX.exe" ]