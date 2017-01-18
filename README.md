# docker-alpine-flask

Dockerfile to build flask container running on alpine Linux

Currently, only suggested for 'development' environment

### Container
https://hub.docker.com/r/thebinary/alpine-flask/

Properties

| Parameters | Values |
|------------|--------|
| APP Directory | /app |
| Flask App | app.py |
| Port	    | 5000 |

#### Example
```
docker run -d -v $(PWD)/myapp:/app -p 8080:500 --name mycontainer thebinary/apline-flask
```


----
#### DOCKER DOCS
https://docs.docker.com



