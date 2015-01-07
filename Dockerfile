FROM training/sinatra

MAINTAINER Björn Waller bjorn@waller.nu

ADD vikt.rb /root/
ADD views/* /root/views

VOLUME /var/lib/vikt
 
