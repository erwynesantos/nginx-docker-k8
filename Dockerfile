FROM nginx:1.25.5-alpine
COPY /home/ubuntu/webpage.com/ /usr/share/nginx/html

# This is by defualt but specify explicitly regardless
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

# Run the following commands from the same directory this Dockerfile is stored on
# $ docker build -t nginx-image .
# $ docker image tag nginx-example-image <username>/nginx-image
# $ docker push <username>/nginx-image