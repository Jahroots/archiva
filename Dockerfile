FROM jeanblanchard/busybox-java
MAINTAINER Jahroots "Jahroots@gmail.com"

RUN opkg-install unzip
RUN curl -O http://mirrors.ircam.fr/pub/apache/archiva/2.1.1/binaries/apache-archiva-2.1.1-bin.zip
RUN unzip apache-archiva-2.1.1-bin.zip
RUN rm apache-archiva-2.1.1-bin.zip

EXPOSE 8080
VOLUME ["/apache-archiva-2.1.1"]
CMD ["/apache-archiva-2.1.1/bin/archiva", "console"]
