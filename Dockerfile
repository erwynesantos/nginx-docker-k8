FROM nginx:1.25.5-alpine
COPY index.html /usr/share/nginx/html
ADD ./letsencrypt /etc/letsencrypt
COPY docker.samsungpass.com.conf /etc/nginx/conf.d/

# Run the following commands from the same directory this Dockerfile is stored on
# $ docker build -t nginx-image-ssl .
# $ docker image tag nginx-example-image <username>/nginx-image (Optional)
# $ docker push <username>/nginx-image-ssl (Optional)
# $ docker run --name nginx-ssl -p 80:80 -p 443:443 -d nginx-image-ssl
# Reference: https://stackoverflow.com/questions/37842690/how-to-configure-lets-encrypt-certificates-for-nginx-inside-a-docker-image
