FROM ubuntu
MAINTAINER Jacky-Michel
RUN apt update && apt install nginx -y
EXPOSE 80
ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

