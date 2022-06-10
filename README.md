# template-jupyterlab-leafmap
Template Jupyerhub for Leafmap
* https://leafmap.org



### To use (docker command)
```
docker build -t tithiwat/template-jupyterlab-leafmap:latest .
docker run -p 8888:8888 tithiwat/template-jupyterlab-leafmap:latest
```

or
```
docker run -p 8888:8888 -v $(pwd):/usr/src tithiwat/template-jupyterlab-leafmap:latest 
```

* default port of jupyterhub is 8888



### To use (docker-compose command)
```
docker-compose up --build # if you need to build
or
docker-compose up
```

## For Authentication

```
jupyter-lab password
```
- Enter password 2 times then
- Modify docker-compose.yml in section volume. For example
```
version: '3'
services:
    test:
        build:
            context: .
            dockerfile: Dockerfile
        image: test
        restart: unless-stopped
        ports:
          - 8888:8888
        command: jupyter-lab --allow-root --ip 0.0.0.0
        volumes:
          - ./jupyter_server_config.json:/root/.jupyter/jupyter_server_config.json
          - .:/usr/src
```

# To access jupyter notebook

Please the output after you are running docker/docker-compose

http://127.0.0.1:8888/lab?token=xxxxxxxxx

change the url paramter ip address and token as you are getting the output from terminal