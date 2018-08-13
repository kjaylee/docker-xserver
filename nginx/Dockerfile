# FROM tutum/nginx
# RUN rm /etc/nginx/sites-enabled/default
# ADD sites-enabled/ /etc/nginx/sites-enabled
# ./nginx/Dockerfile

FROM nginx:latest
RUN rm -rf /etc/nginx
COPY ./conf /etc/nginx
EXPOSE 80 443
