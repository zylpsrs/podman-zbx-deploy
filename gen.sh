openssl dhparam -out dhparam.pem 2048

openssl genrsa -out ssl.key 2048

openssl req -new -key ssl.key -out ssl.csr  \
  -subj "/C=CN/ST=GL/L=GL/O=OS3/OU=Eng/CN=*.zbx.zyl.io"

openssl x509 -req -days 366 -in ssl.csr  \
      -signkey ssl.key -out ssl.crt
