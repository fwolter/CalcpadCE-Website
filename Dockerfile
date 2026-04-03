FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY src/ /usr/share/nginx/html/

RUN sed -i "s/{{YEAR}}/$(date +%Y)/g" /usr/share/nginx/html/index.html

EXPOSE 80
