# nginx-alpine-ssl


```
docker run --name nginx-ssl \
-p 8443:443 \
-v <pathtosite>:/usr/share/nginx/html \
-v <pathtocerts>:/etc/nginx/certs \
-d fzvgu/nginx-alpine-ssl:0.1
```
-------------
default.conf maps certs to example.key and example.crt:
- `openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout example.key -out example.crt -subj "/C=US/ST=Oregon/L=Portland/O=Company Name/OU=Org/CN=www.example.com" -days 3650`


-------------
Build adds a default user to the .htpasswd: `user` with `SecretPassword`, which should be changed

`docker exec  <container> htpasswd -b /etc/apache2/.htpasswd user <newpassword>`
