FROM nginx:latest

COPY ./css /usr/share/nginx/html/css
COPY ./image /usr/share/nginx/html/image
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["sh", "-c", "nginx && tail -f /var/log/nginx/access.log"]
