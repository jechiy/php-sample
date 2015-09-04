FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y nginx zip curl
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN curl -o /usr/share/nginx/html/gh-pages.zip -L https://codeload.github.com/jechiy/cc/zip/gh-pages
RUN cd /usr/share/nginx/html/ && unzip gh-pages.zip && mv cc-gh-pages/* . && rm -rf cc-gh-pages gh-pages.zip
EXPOSE 80
CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
