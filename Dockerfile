FROM nginx:stable
COPY _site/ /usr/share/nginx/html/
COPY nginx/default.conf /etc/nginx/conf.d/
