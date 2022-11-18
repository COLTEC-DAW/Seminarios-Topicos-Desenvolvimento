FROM nginx:latest

EXPOSE 80

COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/pages
RUN mkdir -p /www

COPY html /www/html
COPY daw.conf /etc/nginx/pages/daw.conf

CMD ["nginx", "-g", "daemon off;"]