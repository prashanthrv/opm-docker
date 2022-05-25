# opm-docker
OpManager Free Edition Docker Container

**To build locally**

    docker build . -t opmanager:latest

**To run the local image container**

    docker run -d -p 8060:80 opmanager:latest


**To run the public container**

    docker run -d -p 8060:80 prashanthrv/opmanager:latest
