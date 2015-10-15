# Lumen Docker container
Docker container for shipping Lumen apps

### Getting started

  Copy the Dockerfile to the project root

    wget https://raw.githubusercontent.com/gayanhewa/lumen-container/master/Dockerfile

  Build the container :

    docker build -t <my-app-name> .


  Run the container :

    docker run -d -p 8080:80 <my-app-name>

  When we are developing the application , it becomes cumbersome to rebuild each time to test a change. To overcome this you can mount a local directory / file as a mounted volume into the container. It can be done in the following manner.
  
    docker run -d -v /local/directory/path:/var/www -p 80:80 <my-app-name>

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


### Lumen Enviorment Variables 

  In you can either add the .env file to the project root or use Dockerfile to update the env variable values [supported](https://github.com/laravel/lumen/blob/master/.env.example) by lumen.
  
  For an example the definition of the DB_CONNECTION can be found in the Dockerfile.
