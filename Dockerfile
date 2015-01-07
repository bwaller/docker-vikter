FROM training/sinatra

MAINTAINER Björn Waller bjorn@waller.nu

ADD vikt.rb /root/
RUN mkdir /root/views
ADD views/* /root/views/

VOLUME /var/lib/vikt
 
