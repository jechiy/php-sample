FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nginx zip curl

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN curl -o /usr/share/nginx/html/master.zip -L https://coding.net/u/jechiy/p/121/git/archive/master
RUN cd /usr/share/nginx/html/ && unzip master.zip && mv 121-master.zip/* . && rm -rf 121-master master.zip

EXPOSE 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
