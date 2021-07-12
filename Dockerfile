###############################################################################
FROM nginx:1.21.1-alpine AS nginx

WORKDIR /code/public

ADD docker/nginx.conf /etc/nginx/conf.d/default.conf

###############################################################################
FROM nginx as web-production

ADD src /code/public
