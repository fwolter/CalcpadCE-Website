FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY src/ /usr/share/nginx/html/

RUN VERSION="7.6.4" && \
	sed -i "s/{{YEAR}}/$(date +%Y)/g" /usr/share/nginx/html/index.html && \
	sed -i "s/{{VERSION}}/${VERSION}/g" /usr/share/nginx/html/index.html

EXPOSE 80
