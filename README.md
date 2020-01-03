# Julia Embedding Docker Image

This Dockerfile has an **Ubuntu** base image with the **Julia** programming language built from source. This image is can be used as a testing space to build FORTRAN or C/C++ code with embedded Julia functions.


## Prerequisites 
1. Docker is installed and running

## Running

### Build from Source 
1. git pull https://github.com/jamilgafur/Julia_dev.git
2. cd Julia_dev
3. docker build -t name1 .
4. docker run -rm -ti name1
> If you are running on a mac run the command:
>  docker run -e OPENBLAS_CORETYPE=haswell -rm -ti name1

### Build from docker
1. docker pull jamilgafur/julia_dev:latest
2. docker run -ti -rm jamilgafur/julia_dev
> if you are running on a mac run the command
> docker run -e OPENBLAS_CORETYPE=haswell -rm -ti jamilgafur/julia_dev

## Example Testcase
For an example of embedding I would recommend trying to run the code found [here](https://gitlab.com/jamil_projects/embedded_julia/julia_embed) 
