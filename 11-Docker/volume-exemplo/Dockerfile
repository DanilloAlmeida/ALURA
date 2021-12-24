FROM node:latest
MAINTAINER Danillo Almeida
COPY . /var/www
WORKDIR /var/www/
RUN npm install
ENTRYPOINT [ "npm start" ]
EXPOSE 3000
