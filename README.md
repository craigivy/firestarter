# FireStarter 
A container that starts other containers
Modified version of [run a container](https://docs.docker.com/engine/api/get-started/#run-a-container-in-the-background) to create a new running container every 5 seconds.  Started by exposing the docker socket to the container which is [not advised](https://www.lvh.io/posts/dont-expose-the-docker-socket-not-even-to-a-container.html)

## Prerequisites
* Install [Docker](http://docker.io)
* Install make

## Execution
The make file has all the execution steps
* make dockerize - creates the fire starter image
* make drun - runs firestarter which will start a bfirsh/reticulate-splines every 5 seconds.  
* make dremove - removes **all** the containers from docker

## Ref
* [stack trace](https://stackoverflow.com/questions/39468841/is-it-possible-to-start-a-stopped-container-from-another-container)
* [Don't expose the Docker socket](https://www.lvh.io/posts/dont-expose-the-docker-socket-not-even-to-a-container.html)
