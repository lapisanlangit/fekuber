FROM nginx

WORKDIR /dist/ngfekuber/browser/

COPY ./dist/ngfekuber/browser/ /usr/share/nginx/html/
# COPY ./dist/ubold-angular/tkd /usr/share/nginx/html/tkd/
COPY ./nginx.conf  /etc/nginx/conf.d/default.conf

# Exposing a port, here it means that inside the container
# the app will be using Port 80 while running
EXPOSE 80
