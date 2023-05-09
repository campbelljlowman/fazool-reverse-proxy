FROM nginx:1.24.0
LABEL org.opencontainers.image.source=https://github.com/campbelljlowman/fazool-reverse-proxy

COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]