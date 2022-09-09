# powershell script to run 42 development environment on Windows

# get the project to be shared as argument
[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $p1
)
docker load -i .\c-environment.tar
# set docker run variables
$DOCKER_NAME='42docker'
$DOCKER_IMAGE='c-environment'
$PATH_DIRECTORY=${PWD}
$PROJECT_DIRECTORY="\$p1"
$HOST_DIRECTORY="$PATH_DIRECTORY$PROJECT_DIRECTORY"

# ensuring that there isn't any docker already launched
docker rm -fv $DOCKER_NAME

# launch the docker container
docker run --name $DOCKER_NAME -d -v $HOST_DIRECTORY\:/home/marvin $DOCKER_IMAGE