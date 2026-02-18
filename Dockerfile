FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
HEALTHCHECK CMD wget -qO- http://localhost:80 || exit 1

