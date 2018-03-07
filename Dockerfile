FROM nginx:alpine

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

RUN apk add --update apache2-utils \
&& mkdir -p /etc/apache2 \
&& htpasswd -bc /etc/apache2/.htpasswd user SecretPassword

CMD ["nginx", "-g", "daemon off;"]