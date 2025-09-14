FROM nginx:latest
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
	nginx \
	mc \
	nano \
	iftop \
	sudo \
	dpkg \
	iotop

WORKDIR /usr/share/nginx/html

RUN rm index.html
COPY ./index.html .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
