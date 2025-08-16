###############################################################################
FROM nginx:1.29.1-alpine AS nginx

WORKDIR /code/public

ADD docker/nginx.conf /etc/nginx/conf.d/default.conf

ENV NGINX_ENTRYPOINT_WORKER_PROCESSES_AUTOTUNE=1

###############################################################################
FROM nginx as web-production

ADD src /code/public
