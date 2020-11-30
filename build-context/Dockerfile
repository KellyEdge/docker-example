
# Dockerfile Documentation -> https://docs.docker.com/engine/reference/builder/
# Dockerfile Best Practices -> https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
# Apache httpd Base Image @ Docker Hub -> https://hub.docker.com/_/httpd

FROM httpd:alpine
COPY ./html/ /usr/local/apache2/htdocs/
EXPOSE 80/tcp
