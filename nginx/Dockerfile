FROM nginx:1.21-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
COPY domain.key /etc/nginx/domain.key
COPY domain.crt /etc/nginx/domain.crt
