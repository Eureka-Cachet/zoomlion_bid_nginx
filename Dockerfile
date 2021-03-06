FROM        nginx:latest

MAINTAINER  eurekacachetdev@gmail.com

COPY        nginx.conf /etc/nginx/conf.d/default.conf

RUN         mkdir -p /var/clocking/cert

COPY        .cert/certificate.pem /var/clocking/cert/certificate.pem
COPY        .cert/private.key /var/clocking/cert/private.key

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]