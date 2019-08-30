Build Container:

docker build -t squishcoco .


Run Container:

docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name cocolic {IMAGE-NAME}


After exiting the container,

docker start cocolic
docker attach cocolic
