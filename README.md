# Lumen Docker container
Docker container for shipping Lumen apps

### Getting started

  Copy the Dockerfile to the project root


  Build the container :

    docker build -t myapp .


  Run the container :

    docker run -d -p 8080:80 myapp


  Access the app on http://localhost:8080

  The base image gayanhewa/lumen comes in with a single virtualhost configured for the container , php5-fpm backed in with nginx.

  If you want to make changes to the image do the following :

    docker run -it <name-used-to-build> bash

  Install apps , change configuration settings accordingly.

    docker commit <container_id> <your-user-name>/<image-name>:<tag>

    docker commit sad123sad1as gayanhewa/mynewlumen:01 

  To get the container id you can use :

    docker ps -a


  Once commited you can publish :

    docker push <your-user-name>/<image-name>:<tag>
