FROM VSDC05064C:89/lib/nginx:lates AS ngi
WORKDIR /dist/src/app
COPY . .
COPY ./dist/ /usr/share/nginx/html/spanext/
# COPY ./dist/ubold-angular/tkd /usr/share/nginx/html/tkd/
COPY ./nginx.conf  /etc/nginx/conf.d/default.conf
# Exposing a port, here it means that inside the container
# the app will be using Port 80 while running
EXPOSE 80
