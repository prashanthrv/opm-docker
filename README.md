# opm-docker
OpManager Free Edition Docker Container

**To build locally**

    docker build . -t opmanager:latest

**To run from local image**

    docker run -d -p 8060:80 opmanager:latest


**To run from public image directly without building locally**

    docker run -d -p 8060:80 prashanthrv/opmanager:latest
