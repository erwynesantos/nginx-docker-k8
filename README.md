# Run the following steps in order
## Docker Step
`$ docker build -t nginx-image .` <br/>
`$ docker image tag nginx-example-image <username>/nginx-image` <br/>
`$ docker push <username>/nginx-image` <br/>
(Optional: Start app manually) `$ docker run --name nginx-test -p 8181:80 -d nginx-image` <br/>

## Kubernetes Step
`kubectl apply -f manifest.yaml`
